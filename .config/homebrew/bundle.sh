#!/bin/sh
set -eu

: "${BREWFILE:=$HOME/.config/homebrew/Brewfile}"

usage="Usage: $0 [install|dump] env:BREWFILE=${BREWFILE}"
command=${1?$usage}

case $command in
    install)
        brew bundle install --verbose --file="$BREWFILE" ;;
    dump)
        brew bundle dump --describe --file="$BREWFILE" ;;
    *)
        echo 1>&2 "$usage" ;;  
esac
