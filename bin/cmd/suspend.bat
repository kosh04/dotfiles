@echo off
REM http://www.atmarkit.co.jp/ait/articles/0601/14/news013.html
rem rundll32 powrprof.dll,SetSuspendState

setlocal
path %PATH%;%USERPROFILE%\Downloads\microsoft\Sysinternals\SysinternalsSuite
psshutdown -d %*
