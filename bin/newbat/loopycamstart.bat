@echo off
setlocal
call "%~dp0..\loopykill.bat"
if not defined LOOPY_ARGS set "LOOPY_ARGS=0,0,800,600"
if "%~1"=="2" set "LOOPY_ARGS=1920,0,1920,1080"
call "%~dp0..\loopystart.bat"
endlocal
