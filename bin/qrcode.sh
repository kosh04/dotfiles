#!/bin/sh
# Usage: qrcode.sh [file|stdin]
file=${1:-"-"}
curl -F "-=<$file" qrenco.de
