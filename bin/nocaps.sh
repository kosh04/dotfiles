#!/bin/sh
# Make CapsLock an additional Ctrl
setxkbmap -option ctrl:nocaps

# or sudo edit /etc/default/keyboard
#- XKBOPTIONS=""
#+ XKBOPTIONS="ctrl:nocaps"
