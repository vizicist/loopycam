c:

c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /F /IM python.exe

set PATH=%USERPROFILE%\github\loopycam\bin;%PATH%

cd %USERPROFILE%\github\loopycam\bin

rem defaults if environment variables not set
if ".%LOOPY_ARGS%" == "." (set LOOPY_ARGS=0,0,800,600)
if ".%1" == ".2" (set LOOPY_ARGS=1920,0,1920,1080)

if .%LOOPYCAM_DATADIR% == . (set LOOPYCAM_DATADIR=%USERPROFILE%\github\loopycam\data)

c:\python26\python.exe %USERPROFILE%\github\loopycam\python\pyloopy\pyloopy.py
