c:

c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /f /im loopycam.exe
rem c:/windows/system32/taskkill /F /IM python.exe

cd %USERPROFILE%\github\loopycam\bin
copy loopystart1b.bat loopystart.bat
cd \local\python\pyloopy\PyLoopy
rem c:\python25\python.exe pyloopy.py
c:\python26\python.exe pyloopy.py
