#!/bin/sh
# http://dict.org/
# https://tools.ietf.org/html/rfc2229

WORD=${1?"usage: $0 WORD"}
curl "dict://dict.org/d:${WORD}"
