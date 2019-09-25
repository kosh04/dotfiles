#!/bin/sh
# https://stackoverflow.com/a/3350246/4499880
sed -e 's/#.*$//' -e '/^$/d' "$@"
