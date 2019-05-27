@ECHO OFF
SETLOCAL
REM http://stackoverflow.com/questions/4106207/parse-path-using-for-f-in-bat-script
SET TempPath="%Path:;=";"%"
FOR %%a IN (%TempPath%) DO echo.%%~a
