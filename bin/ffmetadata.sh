#!/bin/sh
# Dump media file metadata
set -eu

usage="Usage: $0 media_file"
file=${1?$usage}

ffmpeg -i "$file" -f ffmetadata -loglevel quiet -

# https://github.com/FFmpeg/FFmpeg/tests/fate-run.sh
#ffmpeg "$@" -flags +bitexact -fflags +bitexact -f ffmetadata -
