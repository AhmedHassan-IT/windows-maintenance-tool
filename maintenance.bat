@echo off
title Windows Maintenance Tool
color 0A

echo Running DISM to restore system health...
echo Y | DISM.exe /Online /Cleanup-Image /RestoreHealth

echo.
echo Running CHKDSK to scan and fix drive C...
echo Y | chkdsk C: /f /r

echo.
echo Running System File Checker (SFC)...
sfc /scannow

echo.
echo All operations completed. You may need to restart your computer.
pause
