@echo off
for %%i in ("%1") do echo.%%~$PATH:i
for %%i in ("%1.exe") do echo.%%~$PATH:i
for %%i in ("%1.bat") do echo.%%~$PATH:i
for %%i in ("%1.cmd") do echo.%%~$PATH:i
