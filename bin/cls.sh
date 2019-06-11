#!/bin/bash
# source: https://gist.github.com/kosh04/1016003
# note: GNU Bash required (echo, printf)

# The sequence ESC[2J clears the terminal, and ESCc resets the terminal.
#echo -en "\x1B[2J\x1B\x63"
echo -n $'\x1B[2J\x1B\x63'
#printf "\x1B[2J\x1B\x63"
