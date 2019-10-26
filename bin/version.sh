#!/bin/bash
set -eux

# 色々なバージョン情報を確認する
# - Kernel
# - Linux distribution
# - System Infomation

cmds=(
    # NOTE: *-release (redhat,fedra,turbolinux,SuSE)
    "cat /etc/lsb-release"
    "cat /etc/os-release"
    "cat /etc/issue"
#	"cat /etc/issue.net"
    "cat /etc/debian_version"
    "cat /proc/version"
    "cat /proc/version_signature"
    "lsb_release -a"
    "uname -sr"
    "uname -a"
	"hostnamectl"
    "freebsd-version"
)

case $(uname) in
	Darwin)
	cmds+=(
		"sw_vers"
		"hostinfo"
	)
	;;
esac

eval "${cmds[$RANDOM % ${#cmds[@]}]}"
