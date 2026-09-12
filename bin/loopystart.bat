@echo off
setlocal
if not defined LOOPYCAM_DATADIR set "LOOPYCAM_DATADIR=%~dp0..\data"
if not defined LOOPYCAM_CAMERA set "LOOPYCAM_CAMERA=Gemini 335"
if not defined LOOPY_ARGS set "LOOPY_ARGS=0,0,800,600"
start "LoopyCam" /D "%~dp0" "%~dp0loopycam.exe" -w %LOOPY_ARGS%
endlocal
