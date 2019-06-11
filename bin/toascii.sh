#!/bin/sh
## Convert any image to ascii art (require netpbm)
set -eu
file=${1?"Usage: $0 FILENAME"}
anytopnm "$file" | ppmtopgm | pgmtopbm | pbmtoascii -2x4
