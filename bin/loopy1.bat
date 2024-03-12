c:

c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /F /IM python.exe

set PATH=%USERPROFILE%\github\loopycam\bin;%PATH%
echo PATH is %PATH%

cd %USERPROFILE%\github\loopycam\bin
copy loopystart1.bat loopystart.bat
cd %USERPROFILE%\github\loopycam\python\pyloopy
c:\python26\python.exe pyloopy.py
