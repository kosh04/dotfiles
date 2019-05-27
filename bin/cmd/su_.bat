@rem Run cmd as Administrator
@powershell start-process cmd -ArgumentList '/k ""cd /d %CD%""' -verb runas
