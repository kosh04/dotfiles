#!/bin/bash
set -eux

# NOTE: force IPv4 or IPv6 lookup?
# Use command flags, e.g. "dig -[46]", "curl -[46]"
cmds=(
    "dig TXT +short o-o.myaddr.l.google.com @ns1.google.com"
    # XXX: @resolver1.opendns.com does not work. auth required?
    "dig +short myip.opendns.com @208.67.222.222"
    "curl ipinfo.io/ip"                # (IPv4 only)
    "curl ifconfig.me"                 # (IPv4 only)
    "curl httpbin.org/ip"              # (IPv4 only)
    "curl diagnostic.opendns.com/myip" # (IPv4/6)
    "curl icanhazip.com"               # (IPv4/6)
    "curl ipecho.net/plain"            # (IPv4 only)
    "curl ifconfig.co"                 # (IPv4/6)
    "curl wtfismyip.com/text"          # (IPv4/6)
    "curl eth0.me"                     # (IPv4 only)
)

eval "${cmds[$RANDOM % ${#cmds[@]}]}"
