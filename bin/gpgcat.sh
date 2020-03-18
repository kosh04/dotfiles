#!/bin/sh
set -eu
file=${1?"Usage: $0 FILE"}
gpg --batch --quiet --decrypt "$file"
