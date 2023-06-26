#!/bin/bash
set -euo pipefail
USAGE="Usage: ${0##*/} URL"
URL=${1?$USAGE}
youtube-dl --format worst --get-url "$URL" | xargs ffplay
