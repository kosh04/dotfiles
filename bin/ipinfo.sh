#!/bin/bash
set -eux

# NOTE: force IPv4 or IPv6 lookup?
# Use command flags, e.g. "dig -[46]", "curl -[46]"
cmds=(
    ## Google DNS
    "dig +short TXT o-o.myaddr.l.google.com @ns1.google.com"
    "dig +short o-o.myaddr.l.google.com txt @dns.google"
    ## OpenDNS
    "dig -4 ANY +short myip.opendns.com @resolver1.opendns.com"
    "dig -6 ANY +short myip.opendns.com @resolver1.opendns.com"
    "dig +short myip.opendns.com @208.67.222.222"
    "dig +short debug.opendns.com txt @dns.opendns.com"
    ## Akamai DNS
    "dig +short whoami.akamai.net @ns1-1.akamaitech.net"
    ## Cloudflare
    "dig whoami.cloudflare ch txt @1.1.1.1"
    "dig whoami.cloudflare ch txt @one.one.one.one"
    ## HTTP (switch cURL option -4/-6 to IPv4/6)
    "curl api.infoip.io"               # (4 only)
    "curl bot.whatismyipaddress.com"   # (4/6)
    "curl checkip.amazonaws.com"       # (4 only)
    "curl curlmyip.net"                # (4/6)
    "curl diagnostic.opendns.com/myip" # (4/6)
    "curl eth0.me"                     # (4 only)
    "curl httpbin.org/ip"              # (4 only)
    "curl icanhazip.com"               # (4/6)
    "curl ident.me"                    # (4/6; v4.ident.me; v6.ident.me)
    "curl ifconfig.co"                 # (4/6)
    "curl ifconfig.me"                 # (4 only)
    "curl ifconfig.pro"                # (4/6)
    "curl inet-ip.info"                # (4 only)
    "curl ipecho.net/plain"            # (4 only)
    "curl ip.appspot.com"              # (4/6)
    "curl ipinfo.io/ip"                # (4 only)
    "curl ipinfo.me"                   # (4/6)
    "curl ip.nux.ro"                   # (4/6)
    "curl ip.tyk.nu"                   # (4/6)
    "curl ip.sb"                       # (4/6)
    "curl kakunin.teraren.com"         # (4/6)
    "curl l2.io/ip"                    # (4 only)
    "curl tnx.nl/ip"                   # (4/6)
    "curl wgetip.com"                  # (4/6)
    "curl whatismyip.akamai.com"       # (4 only)
    "curl ipv4.whatismyip.akamai.com"
    "curl ipv6.whatismyip.akamai.com"
    "curl wtfismyip.com/text"          # (4/6)
)

eval "${cmds[$RANDOM % ${#cmds[@]}]}"

# macos
# $ ipconfig getifaddr <interface-name>
# $ ipconfig getifaddr en0
