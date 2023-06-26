$user = New-Object System.Security.Principal.NTAccount($env:USERNAME)
$sid = $user.Translate([System.Security.Principal.SecurityIdentifier]).Value
$dir = Join-Path $env:HOMEDRIVE '$Recycle.Bin' $sid
ls $dir
