#!/bin/bash
set -eu -o pipefail

pattern=${1?"Usage: $0 PATTERN"}
xargsopt=

case "$OSTYPE" in
    linux-gnu) xargsopt=--no-run-if-empty ;; # or "-r"
esac

pgrep -d, -x "$pattern" | xargs $xargsopt ps -fp
