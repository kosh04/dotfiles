#!/bin/sh
# Make CapsLock an additional Ctrl
setxkbmap -option ctrl:nocaps
setxkbmap -query

# or sudo edit /etc/default/keyboard
#- XKBOPTIONS=""
#+ XKBOPTIONS="ctrl:nocaps"
