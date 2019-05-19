#!/bin/sh
set -eu
# https://qiita.com/greymd/items/68b0c40044a88171235a
usage="usage: ${0##*/} hostname"
hostname=${1?$usage}

openssl s_client -connect $hostname:https -showcerts </dev/null 2>&1 | grep "[si]:"
