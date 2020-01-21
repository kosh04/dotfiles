# profile.ps1 ($PROFILE.CurrentUserAllHosts)

# (Get-Command prompt).ScriptBlock
function prompt() {
    if ($?) {
        write-host "(*'-')" -NoNewLine -ForegroundColor "Green"
    } else {
        write-host "(*;-;)" -NoNewLine -ForegroundColor "Red"
    }
    $u = [System.Environment]::UserName # $env:USER
    $h = [Net.Dns]::GetHostName()       # $env:COMPUTERNAME
    $l = Get-Location
    $p = "> "
    return "[${u}@${h}] ${l}${p}"
}
