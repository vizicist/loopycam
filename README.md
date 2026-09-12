# loopycam

LoopyCam visual looping instrument.

## Camera selection

LoopyCam can select a DirectShow camera by its Windows device name. The bundled
launch scripts default to `Orbbec Gemini 335 RGB Camera` when
`LOOPYCAM_CAMERA` is not already set.

Run `loopycam.exe --list-cameras` to print the available camera names and
indices. Select a camera with either `--camera "camera name"` (or `-c`) or the
`LOOPYCAM_CAMERA` environment variable. Names are matched without regard to
case and may be shortened to an unambiguous substring. A numeric value selects
that DirectShow index.

## Stream Deck + control

The Python panel starts `streamdeck_bridge.py` automatically and uses a directly
connected Stream Deck + without requiring Elgato's desktop software. Install the
Python 3 dependencies once with:

```
py -3 -m pip install -r python/pyloopy/requirements-streamdeck.txt
```

The eight LCD keys expose four mode keys and the four action keys (`/`, `*`,
`-`, and `+`). Rotate the left dial to switch among the three mode pages. Hold
the left dial while pressing a mode key to make that mode sticky, matching the
number-pad Enter behavior. Rotating the second dial triggers `/` or `*`, and
rotating the third triggers `-` or `+`. The right dial also switches pages; its
push action is Num Lock. Tapping one of the four touch-strip quarters triggers
the corresponding action key. The touch strip mirrors the four-line Pertelian
LCD display.

Set `LOOPYCAM_STREAMDECK=0` to disable automatic bridge startup.

## Browser control

While `loopycam.exe` is running, open [http://127.0.0.1:8888](http://127.0.0.1:8888)
to use the browser control panel. The first browser version provides live loop
status and direct controls for recording, overlays, blackout, live input,
window layouts, trails, borders, XOR, smoothing, and interpolation.

The executable serves the files in `web` and handles browser actions directly
on the C++ looper thread. Browser controls do not pass through OSC. The server
currently listens only on the local computer.
