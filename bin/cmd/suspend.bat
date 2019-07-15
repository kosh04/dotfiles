@echo off
REM http://www.atmarkit.co.jp/ait/articles/0601/14/news013.html
REM powercfg -hibernate off
REM rundll32 PowrProf.dll,SetSuspendState

REM powercfg -hibernate on
REM rundll32 PowrProf.dll,SetSuspendState
REM shutdown /h

setlocal
path %PATH%;%USERPROFILE%\Downloads\microsoft\Sysinternals\SysinternalsSuite
psshutdown -d %*
