c:

c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /f /im loopycam.exe
rem c:/windows/system32/taskkill /F /IM python.exe

cd %USERPROFILE%\github\loopycam\bin
copy loopystart2.bat loopystart.bat

cd %USERPROFILE%\github\loopycam\python\pyloopy
c:\python26\python.exe pyloopy.py
