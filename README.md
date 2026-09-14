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

The upper row contains four action keys whose labels and behavior follow the
current category. Each of the first three lower-row keys has its own category.
Pressing a lower key makes it current; the current category is orange and
supplies the four upper action keys. Turn the left dial to change the category
assigned to whichever lower key is current. The two middle dials are currently
disabled. Categories are ordered
alphabetically when traversed with a dial. The three button assignments are
saved in `data/streamdeck_categories.ini` and restored on the next launch. The
lower-right key remains a dedicated momentary Record key
that matches the browser Record button. The rightmost dial adjusts final video
output brightness from 0% to 100% in 5% steps. The touch strip always reports
the current brightness and number of visible windows. Tapping one of the four touch-strip quarters triggers the
corresponding upper action key. The strip also reports the camera's delivered
resolution and frame rate plus its negotiated USB link speed. Preset selection,
loading, saving, preset-set cycling, and random preset loading use the existing
`presets_*` directories directly. The browser control panel follows the current
Stream Deck category.

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
