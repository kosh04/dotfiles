#!/bin/bash
set -e -o pipefail

## `pgrep -a PATTERN` でも十分な気がしてきた...
usage="Usage: $0 [options] PATTERN"

pgrepopt=()
xargsopt=

while getopts ix OPT
do
    case $OPT in
        i) pgrepopt+=("-i") ;;
        x) pgrepopt+=("-x") ;;
        *) ;;
    esac
done
shift $((OPTIND - 1))

case "$OSTYPE" in
    linux-gnu) xargsopt=--no-run-if-empty ;; # or "-r"
esac

pattern=${1?"$usage"}

# using pidof
psgrep() {
    pidof "$pattern" | xargs $xargsopt ps -ep
}

pgrep -d, "${pgrepopt[@]}" "$pattern" | xargs $xargsopt ps -fp
