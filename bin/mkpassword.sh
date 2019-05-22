#!/bin/sh
# Usage: ./mkpassword.sh [SET] [LENGTH]

SET=${1:-"A-Z-a-z0-9"}
LENGTH=${2:-32}
tr -dc "$SET" < /dev/urandom | head --bytes "$LENGTH"
echo

## Others
# mkpasswd
# pwgen
# openssl rand -base64 32
