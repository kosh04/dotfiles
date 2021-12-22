#!/bin/bash
. use-strict.bash.env

calc() { echo "$@" | bc; }
#calc() { bc <<<"$@"; }

usage="Usage: $0 <numerical_expression>"
expr=${1?$usage}
openssl prime "$(calc "$expr")"
