@ECHO OFF
@REM Usage: PS> $env:SSH_ASKPASS="c:/path/to/ssh_askpass.cmd"
@REM SET PATH=%WINDIR%\System32;%WINDIR%\System32\WindowsPowerShell\v1.0
POWERSHELL -NoLogo -ExecutionPolicy Unrestricted -NoProfile -Command "(Get-Credential -UserName 'Enter Password Only' -Message 'Enter SSH Password').GetNetworkCredential().Password" 2>NUL
EXIT /B 0
