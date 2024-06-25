#!/bin/bash

# commandlinefu.comで見つけた便利・面白Linuxコマンド使用例
# https://www.commandlinefu.com/commands/browse/sort-by-votes
# https://wonderwall.hatenablog.com/entry/2017/08/01/083000

alias mount='mount | column -t'
alias stopwatch='time read'	# Ctrl-d to Stop
alias typing_bot='pv -qL10'
alias process_tree='ps awwfux | less -S'
alias keycode='showkey -a'
alias colorize='ccze -A | less -R'
alias prefix_timestamp_='while read; do echo "$(date +%T.%N) $REPLY"; done'
alias sizeof_long='getconf LONG_BIT'
alias about_filesystems='man hier'

binaryclock() {
    watch -n1 'echo "obase=2;`date +%s`" | bc'
}

# Random [1..X]
dice() {
    local X=${1:-6}
    echo $((RANDOM % X + 1))
}

unixtime2date() {
    date --date=@"${1}"
}

man2pdf() {
    man -t "${1}" | ps2pdf - "${1}.pdf"
}
