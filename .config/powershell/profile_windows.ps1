Set-Alias which Get-Command
#Set-Alias grep findstr

function env {
    #cmd /c set
    Get-ChildItem env:\
}

function mklink {
	cmd /c mklink $args
}

#$OutputEncoding=[System.Text.Encoding]::UTF8
#chcp 65001

function dotfiles {
	git --git-dir="$HOME\.dotfiles.git" --work-tree="$HOME" $args
}
