# loopycam

LoopyCam visual looping instrument.

## Camera selection

LoopyCam captures its color stream through Orbbec SDK v2. The bundled launch
scripts default to `Gemini 335` when
`LOOPYCAM_CAMERA` is not already set.

Run `loopycam.exe --list-cameras` to print connected Orbbec camera names,
serial numbers, and SDK indices. Select a camera with `--camera NAME`,
`--camera SERIAL` (or `-c`), or the `LOOPYCAM_CAMERA` environment variable.
Names are matched without regard to case and may be shortened to an
unambiguous substring. A numeric value selects that SDK index.

Camera capture defaults to 1280x720. Use `--resolution WIDTHxHEIGHT` (or `-r`)
to request another resolution, for example:

```bat
loopycam.exe --resolution 640x480
```

The SDK may select its closest supported color mode when the exact requested
resolution is unavailable; LoopyCam reports the delivered resolution in the web
interface and on the Stream Deck strip. RGB color is the first stream migrated
to the SDK. The capture layer retains the Orbbec device and pipeline so depth,
infrared, alignment, and camera controls can be added without replacing the
camera backend again.

The repository includes the Win32 Orbbec SDK v2.9.3 runtime and import library.
LoopyCam remains a 32-bit executable so its existing FreeFrame plugins continue
to load. See [orbbecsdk/README.md](orbbecsdk/README.md) for SDK provenance and
build details.

## Stream Deck + control

`loopycam.exe` opens a directly connected Stream Deck + through the Windows HID
API. Elgato's desktop software, Python, and a separate bridge process are not
required. The device connects during startup and is checked every two seconds
after a disconnect, so unplugging and reconnecting it does not require a
LoopyCam restart.

The upper row of LCD keys contains the four action keys (`/`, `*`, `-`, and
`+`). The first three keys on the lower row form a circular list of mode
controls. The lower-right key is always a dedicated momentary Record key that
matches the browser Record button. Each detent of the left or right dial shifts
that list by one mode. The four upper keys display the active mode's action
names from the touch strip. Pressing a lower-row mode selects it until another
lower-row mode is pressed. Rotating the second dial triggers `/` or `*`, and
rotating the third triggers `-` or `+`. Tapping one of the four touch-strip quarters triggers
the corresponding action key. The touch strip mirrors the four-line Pertelian
LCD display and reports the camera's delivered resolution and frame rate plus
its negotiated USB link speed. Preset selection, loading, saving, preset-set cycling, and random
preset loading use the existing `presets_*` directories directly. The browser
control panel also follows the mode selected on the Stream Deck.

Set `LOOPYCAM_STREAMDECK=0` to disable native Stream Deck support.

## Browser control

While `loopycam.exe` is running, open [http://127.0.0.1:8888](http://127.0.0.1:8888)
to use the browser control panel. It mirrors the three-column Python panel with
all three pre-effect, post-effect, and FFGL plugin banks. Plugin menus are
populated from the DLLs LoopyCam discovers at startup, and the parameter pane
edits the selected plugin's live values. The right panel reports current mode,
loop and window state and provides recording, overlay, blackout, live input,
loop selection, and window layout controls. Trails, borders, XOR, smoothing,
and interpolation are also available. The Live Control panel reports the
camera's delivered resolution and frame rate and its negotiated USB link speed.

The console at the bottom accepts `help` for its command list. It can inspect
state and plugin catalogs and control loops, windows, recording, overlays,
trails, plugin slots, and plugin parameters without leaving the page.

The executable serves the files in `web` and handles browser actions directly
on the C++ looper thread. Browser controls do not pass through OSC. The server
currently listens only on the local computer.
