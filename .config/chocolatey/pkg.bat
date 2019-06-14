@echo off
setlocal
set database=%~dp0packages.txt

if "%1"=="dump" goto dump
if "%1"=="install" goto install
@rem else if ("%1"=="help")
type %0 & goto :eof

:dump
echo Dump package names to "%database%"
choco list -localonly -limitoutput > "%database%"
exit /b

:install
for /f "usebackq tokens=1,2 delims=|" %%p in ("%database%") do (
    choco install %%p --version %%q -y
)
exit /b
