#!/bin/sh
set -eu

USAGE="Usage: $0 [SET] [LENGTH]"
SET=${1:-"A-Z-a-z0-9"}
LENGTH=${2:-32}

if [ "${SET}" = "--help" ]; then
    echo "$USAGE"
    exit
fi

# require macOS "tr: Illegal byte sequence"
export LC_CTYPE=C

tr -dc "$SET" < /dev/urandom | head -c "$LENGTH"

## Others
# mkpasswd
# pwgen
# openssl rand -base64 32
