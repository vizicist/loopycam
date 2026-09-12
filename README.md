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
