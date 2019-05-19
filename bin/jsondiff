#!/bin/bash
set -eu

# json 間の構造的な diff を取るには？
# http://ja.stackoverflow.com/a/24163/2391

json_pretty='jq . --sort-keys'

json_1=${1}
json_2=${2}

diff -u <($json_pretty $json_1) <($json_pretty $json_2)
