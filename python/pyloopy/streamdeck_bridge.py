"""Direct HID bridge between a Stream Deck + and the LoopyCam Python 2 panel."""

from __future__ import annotations

import argparse
import json
import socket
import threading
import time

import hid
from PIL import ImageDraw, ImageFont
from StreamDeck.Devices.StreamDeck import DialEventType, TouchscreenEventType
from StreamDeck.Devices.StreamDeckPlus import StreamDeckPlus
from StreamDeck.ImageHelpers import PILHelper
from StreamDeck.Transport.Transport import Transport, TransportError


ELGATO_VENDOR_ID = 0x0FD9
STREAM_DECK_PLUS_PRODUCT_ID = 0x0084
PANEL_ADDRESS = ("127.0.0.1", 4457)
BRIDGE_ADDRESS = ("127.0.0.1", 4458)

MODE_PAGES = (
    (("7", "Plugins"), ("4", "Trail"), ("1", "Layout"), ("0", "Random")),
    (("9", "Reset"), ("6", "Speed"), ("3", "Preset"), (".", "Restart")),
    (("8", "Option"), ("5", "Movement"), ("2", "Recording"), ("000", "Common")),
)
ACTION_KEYS = (("/", "Action 1"), ("*", "Action 2"), ("-", "Less"), ("+", "More"))
VALID_KEYS = frozenset(
    [key for page in MODE_PAGES for key, _label in page]
    + [key for key, _label in ACTION_KEYS]
    + ["Enter", "NL"]
)


class HidApiDevice(Transport.Device):
    """Transport adapter that lets python-elgato-streamdeck use cython-hidapi."""

    def __init__(self, info):
        self.info = info
        self.handle = None

    def _call(self, operation, *args):
        if self.handle is None:
            raise TransportError("Stream Deck operation attempted while device is closed")
        try:
            return getattr(self.handle, operation)(*args)
        except (OSError, ValueError) as error:
            raise TransportError(str(error))

    def open(self):
        if self.handle is not None:
            return
        try:
            self.handle = hid.device()
            self.handle.open_path(self.info["path"])
        except (OSError, ValueError) as error:
            self.handle = None
            raise TransportError(str(error))

    def close(self):
        if self.handle is None:
            return
        try:
            self.handle.close()
        finally:
            self.handle = None

    def is_open(self):
        return self.handle is not None

    def connected(self):
        path = self.info["path"]
        return any(
            candidate["path"] == path
            for candidate in hid.enumerate(ELGATO_VENDOR_ID, STREAM_DECK_PLUS_PRODUCT_ID)
        )

    def path(self):
        path = self.info["path"]
        return path.decode("utf-8", "replace") if isinstance(path, bytes) else str(path)

    def vendor_id(self):
        return self.info["vendor_id"]

    def product_id(self):
        return self.info["product_id"]

    def write_feature(self, payload):
        return self._call("send_feature_report", bytes(payload))

    def read_feature(self, report_id, length):
        return bytes(self._call("get_feature_report", report_id, length))

    def write(self, payload):
        return self._call("write", bytes(payload))

    def read(self, length):
        data = self._call("read", length, 100)
        return bytes(data) if data else None


def find_stream_deck_plus():
    devices = hid.enumerate(ELGATO_VENDOR_ID, STREAM_DECK_PLUS_PRODUCT_ID)
    if not devices:
        raise RuntimeError("No Stream Deck + is connected")
    return StreamDeckPlus(HidApiDevice(devices[0]))


def load_font(size):
    for name in ("C:/Windows/Fonts/consola.ttf", "C:/Windows/Fonts/arial.ttf"):
        try:
            return ImageFont.truetype(name, size)
        except OSError:
            pass
    return ImageFont.load_default()


class LoopyStreamDeck:
    def __init__(self, deck):
        self.deck = deck
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.socket.bind(BRIDGE_ADDRESS)
        self.socket.settimeout(0.2)
        self.lock = threading.RLock()
        self.running = True
        # Recording (mode 2) is the panel's initial sticky mode.
        self.page = 2
        self.mode = "2"
        self.lines = ["LoopyCam", "Waiting for panel", "", ""]
        self.pressed_keys = {}
        self.key_font = load_font(27)
        self.key_small_font = load_font(18)
        self.lcd_font = load_font(20)

    def send(self, message):
        try:
            self.socket.sendto(json.dumps(message).encode("utf-8"), PANEL_ADDRESS)
        except OSError:
            # The Python 2 panel may still be starting or may have just exited.
            pass

    def send_key(self, key, pressed):
        if key not in VALID_KEYS:
            return
        self.send({"type": "key", "key": key, "pressed": bool(pressed)})

    def pulse_key(self, key, count=1):
        for _unused in range(max(1, abs(int(count)))):
            self.send_key(key, True)
            self.send_key(key, False)

    def page_keys(self):
        return MODE_PAGES[self.page] + ACTION_KEYS

    def set_page(self, delta):
        with self.lock:
            self.page = (self.page + (1 if delta > 0 else -1)) % len(MODE_PAGES)
            self.render_keys()
            self.render_touchscreen()

    def render_key(self, index, pressed=False):
        key, label = self.page_keys()[index]
        if pressed:
            background = "#9d2536"
        elif key == self.mode:
            background = "#b56818"
        elif index < 4:
            background = "#243f69"
        else:
            background = "#513060"

        image = PILHelper.create_key_image(self.deck, background=background)
        draw = ImageDraw.Draw(image)
        key_box = draw.textbbox((0, 0), key, font=self.key_font)
        key_width = key_box[2] - key_box[0]
        draw.text(((image.width - key_width) // 2, 17), key, font=self.key_font, fill="white")
        label_box = draw.textbbox((0, 0), label, font=self.key_small_font)
        label_width = label_box[2] - label_box[0]
        draw.text(
            ((image.width - label_width) // 2, 72),
            label,
            font=self.key_small_font,
            fill="#f0f0f0",
        )
        native = PILHelper.to_native_key_format(self.deck, image)
        self.deck.set_key_image(index, native)

    def render_keys(self):
        with self.deck:
            for index in range(self.deck.key_count()):
                self.render_key(index, index in self.pressed_keys)

    def render_touchscreen(self):
        image = PILHelper.create_touchscreen_image(self.deck, background="#11151c")
        draw = ImageDraw.Draw(image)
        for row, line in enumerate(self.lines[:4]):
            draw.text((12, row * 24), str(line)[:20], font=self.lcd_font, fill="#f4d58d")
        draw.text((682, 4), "PAGE %d/3" % (self.page + 1), font=self.key_small_font, fill="#8da9c4")
        draw.text((682, 32), "D1: PAGE", font=self.key_small_font, fill="#8da9c4")
        draw.text((682, 58), "HOLD=ENTER", font=self.key_small_font, fill="#8da9c4")
        native = PILHelper.to_native_touchscreen_format(self.deck, image)
        with self.deck:
            self.deck.set_touchscreen_image(native, 0, 0, image.width, image.height)

    def on_key(self, _deck, index, pressed):
        with self.lock:
            if pressed:
                key = self.page_keys()[index][0]
                self.pressed_keys[index] = key
            else:
                key = self.pressed_keys.pop(index, self.page_keys()[index][0])
            self.send_key(key, pressed)
            with self.deck:
                self.render_key(index, pressed)

    def on_dial(self, _deck, index, event_type, value):
        if event_type == DialEventType.PUSH:
            dial_keys = ("Enter", "/", "*", "NL")
            self.send_key(dial_keys[index], bool(value))
        elif event_type == DialEventType.TURN:
            if index == 0:
                self.set_page(value)
            elif index == 1:
                self.pulse_key("*" if value > 0 else "/", value)
            elif index == 2:
                self.pulse_key("+" if value > 0 else "-", value)
            elif index == 3:
                self.set_page(value)

    def on_touchscreen(self, _deck, event_type, value):
        if event_type not in (TouchscreenEventType.SHORT, TouchscreenEventType.LONG):
            return
        action_index = min(3, max(0, int(value["x"]) // 200))
        self.pulse_key(ACTION_KEYS[action_index][0])

    def handle_message(self, message):
        if message.get("type") == "shutdown":
            self.running = False
        elif message.get("type") == "state":
            with self.lock:
                lines = message.get("lines", [])
                new_lines = [(str(line) if line is not None else "")[:20] for line in lines[:4]]
                new_lines += [""] * (4 - len(new_lines))
                new_mode = str(message.get("mode", self.mode))
                lines_changed = new_lines != self.lines
                mode_changed = new_mode != self.mode
                self.lines = new_lines
                self.mode = new_mode
                if mode_changed:
                    self.render_keys()
                if lines_changed:
                    self.render_touchscreen()

    def start(self, run_seconds=None):
        self.deck.open()
        self.deck.reset()
        self.deck.set_brightness(65)
        self.deck.set_key_callback(self.on_key)
        self.deck.set_dial_callback(self.on_dial)
        self.deck.set_touchscreen_callback(self.on_touchscreen)
        self.render_keys()
        self.render_touchscreen()
        self.send({"type": "refresh"})

        deadline = time.time() + run_seconds if run_seconds else None
        try:
            while self.running and (deadline is None or time.time() < deadline):
                try:
                    payload, _address = self.socket.recvfrom(8192)
                except socket.timeout:
                    continue
                except OSError:
                    # Windows reports ICMP port-unreachable here while the panel
                    # is still starting. Keep the deck alive and wait for it.
                    continue
                try:
                    self.handle_message(json.loads(payload.decode("utf-8")))
                except (TypeError, ValueError):
                    continue
        finally:
            self.deck.set_key_callback(None)
            self.deck.set_dial_callback(None)
            self.deck.set_touchscreen_callback(None)
            self.deck._setup_reader(None)
            self.deck.close()
            self.socket.close()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--probe", action="store_true", help="list the connected Stream Deck + and exit")
    parser.add_argument("--run-seconds", type=float, help="run briefly, for hardware testing")
    args = parser.parse_args()

    devices = hid.enumerate(ELGATO_VENDOR_ID, STREAM_DECK_PLUS_PRODUCT_ID)
    if args.probe:
        if not devices:
            print("No Stream Deck + found")
            return 1
        for device in devices:
            print(
                "%s serial=%s VID=%04X PID=%04X"
                % (
                    device.get("product_string", "Stream Deck +"),
                    device.get("serial_number", "unknown"),
                    device["vendor_id"],
                    device["product_id"],
                )
            )
        return 0

    bridge = LoopyStreamDeck(find_stream_deck_plus())
    try:
        bridge.start(args.run_seconds)
    except KeyboardInterrupt:
        pass
    except (OSError, RuntimeError, TransportError) as error:
        print("Stream Deck + bridge failed: %s" % error)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
