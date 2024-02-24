sleep 2
c:

c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /F /IM python.exe

cd %USERPROFILE%\github\loopycam\bin
copy loopystart1.bat loopystart.bat

cd \local\python\pyloopy\PyLoopy

sh -c "c:/python25/python.exe pyloopy.py &"

sleep 20
c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /f /im loopycam.exe
c:/windows/system32/taskkill /F /IM python.exe
sleep 1

sh -c "c:/python25/python.exe pyloopy.py &"

