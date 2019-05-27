@echo off
setlocal

if [%1] == [] goto usage

for %%f in (%*) do (
    call :flv2mp4 %%f
)
goto :eof

:flv2mp4
set src=%~f1
set dst=%~dpn1.mp4
call ffmpeg -i "%src%" -codec copy -acodec copy "%dst%"
exit /b

:usage
echo Usage: %0 FILE...
exit /b