# https://software.opensuse.org/package/net-tools-deprecated

alias arp='ip neigh'
alias ifconfig='ip addr'
alias netstat='ss --resolve'
alias netstat-i='ip -stats link'
alias netstat-g='ip maddr'
alias netstat-r='ip route'
alias route='ip route'
alias iptunnel='ip tunnel'
alias iwconfig='iw'

## NOTE

# NETSTAT(8)
# NOTES
#        This program is mostly obsolete.  Replacement for netstat is ss.  Replacement for netstat -r is ip route.  Replacement for netstat -i is  ip  -s  link.
#        Replacement for netstat -g is ip maddr.

# https://wiki.debian.org/NetToolsDeprecation
# https://dougvitale.wordpress.com/2011/12/21/deprecated-linux-networking-commands-and-their-replacements/
# https://lwn.net/Articles/710533/
