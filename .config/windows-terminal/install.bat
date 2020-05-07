@echo off
setlocal
set LINK=%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
set TARGET=%~dp0settings.json

mklink /h "%LINK%" "%TARGET%"

