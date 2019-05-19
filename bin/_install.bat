@echo off

rem インストール用コマンドを出力するだけ / 実行は手動
rem echo cd %HOME%
rem for %%f in (%~dp0\.*) do echo mklink %%~nxf %%~ff

if not exist "%1" goto usage

echo mklink %~1 %~f1
goto end

:usage
echo Install command for dotfiles
echo %~n0 FILENAME

:end