@echo off
taskkill /f /im loopycam.exe >nul 2>&1
taskkill /f /im loopycam_debug.exe >nul 2>&1
exit /b 0
