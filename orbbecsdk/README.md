# Orbbec SDK dependency

This directory contains the headers, Win32 import library, and license files
for [Orbbec SDK v2.9.3](https://github.com/orbbec/OrbbecSDK_v2/releases/tag/v2.9.3),
source commit `2f6561c28255d805b34aa00a690199ce40e96c81`.

The official v2.9.3 Windows binary package is 64-bit. LoopyCam currently needs
a 32-bit process for its existing FreeFrame plugins, so this copy was built
from the official source with Visual Studio 2019 compatibility:

```bat
cmake -G "Visual Studio 16 2019" -A Win32 ^
  -DOB_BUILD_EXAMPLES=OFF -DOB_BUILD_TESTS=OFF -DOB_BUILD_TOOLS=OFF ^
  -DOB_BUILD_DOCS=OFF -DOB_INSTALL_EXAMPLES_SOURCE=OFF ^
  -DOB_BUILD_NET_PAL=OFF -DOB_BUILD_GMSL_PAL=OFF
cmake --build . --config Release --target OrbbecSDK
cmake --install . --config Release
```

Runtime files are installed beside `bin/loopycam.exe`: `OrbbecSDK.dll`, its
configuration files, and the `extensions` directory. Orbbec's Apache 2.0
license and the third-party notices from the same source tree are retained in
this directory.

Windows also needs Orbbec's UVC metadata registry entries for camera timestamps
and frame synchronization. Run the bundled setup once for each newly connected
camera from an administrator PowerShell window:

```powershell
powershell -ExecutionPolicy Bypass -File .\orbbecsdk\env_setup\obsensor_metadata_win10.ps1 -op install
```

The script is copied from the v2.9.3 source tree. Its companion
documentation is in `env_setup/obsensor_metadata_win10.md`.
