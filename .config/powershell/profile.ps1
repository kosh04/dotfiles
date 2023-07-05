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

if ($IsWindows) {
    . "${PSScriptRoot}/profile_windows.ps1"
}

# PSReadLine
# https://docs.microsoft.com/en-us/powershell/module/psreadline/?view=powershell-7
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

## Theme
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

## Functions

# ファイルの場所を開く
function Explorer-Command {
    param(
        [string]$name,
        [switch]$cd
    )
    if ($cd) {
        Get-Command $name | Split-Path | Set-Location
    } else {
        Get-Command $name | Split-Path | Invoke-Item    
    }
}

function setenv {
	param(
		[Parameter(Mandatory)]
		[string]$name,
		[string]$value
	)
	[System.Environment]::SetEnvironmentVariable($name, $value)
}
