#!/bin/sh
set -eu
# Original: https://weechat.org/files/doc/stable/weechat_faq.ja.html#mouse_not_working

usage="$0 [on|off]"

cmd=${1?$usage}
case $cmd in
    on)  printf '\033[?1002h' ;;
    off) printf '\033[?1002l' ;;
esac
