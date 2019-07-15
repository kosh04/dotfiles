#!/bin/sh
set -eu

: "${BREWFILE:=$HOME/.config/homebrew/Brewfile}"

usage="Usage: $0 [install|dump] env:BREWFILE=${BREWFILE}"
command=${1-help}

case $command in
    install)
        brew bundle install --verbose --file="$BREWFILE" ;;
    dump)
        brew bundle dump --describe --file="$BREWFILE" ;;
    help|*)
        echo 1>&2 "$usage" ;;  
esac