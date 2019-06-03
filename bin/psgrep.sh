#!/bin/sh
set -eu
pattern=${1?"Usage: $0 PATTERN"}
pgrep -d, -x "$pattern" | xargs ps -fp 
