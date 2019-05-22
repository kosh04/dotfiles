#!/bin/sh
mecab -O yomi | SayKana -f - "$@"
