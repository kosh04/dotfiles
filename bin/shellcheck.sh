#!/bin/sh
# ShellCheck Trial version
set -eu

file=${1?"Usage: $0 FILE"}
url="https://www.shellcheck.net/shellcheck.php"
message_format="${file}:\(.line):\(.column):\(.level): \(.message) [SC\(.code)]"

curl -s ${url} --data-urlencode "script@${file}" |\
    jq -r ".[] | \"${message_format}\""
