@echo off
setlocal
set COMMANDS=%*
set size=0.4

wt.exe -w 0 ^
        split-pane ^
        --horizontal ^
        --startingDirectory . ^
        --size %SIZE% ^
        --profile "Command Prompt" ^
        cmd.exe /c "%COMMANDS% & pause"
