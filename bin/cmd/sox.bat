@echo off
setlocal

set SOX_VERSION=14.4.2
set PATH=%PATH%;%USERPROFILE%\AppData\Local\Programs\sox-%SOX_VERSION%

rem -t|--type FILETYPE
set AUDIODRIVER=waveaudio
sox.exe %*
