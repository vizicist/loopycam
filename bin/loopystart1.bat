c:
cd %USERPROFILE%\github\loopycam\bin
if ".%LOOPYCAM_CAMERA%" == "." (set "LOOPYCAM_CAMERA=Orbbec Gemini 335 RGB Camera")
sh.exe -c "./loopycam.exe -w 0,0,800,600 &"
