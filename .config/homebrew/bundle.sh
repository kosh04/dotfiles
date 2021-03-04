#!/bin/sh
set -eu

: "${BREWFILE:=$HOME/.config/homebrew/Brewfile}"

usage="Usage: $0 [install|dump] env:BREWFILE=${BREWFILE}"
command=${1-help}

case $command in
    install)
        brew bundle install --verbose --file="$BREWFILE" ;;
    dump)
        [ -f "$BREWFILE" ] && cp -v "$BREWFILE" "$BREWFILE.old"
        brew bundle dump --describe --force --file="$BREWFILE" ;;
    help|*)
        echo 1>&2 "$usage" ;;  
esac
