#!/bin/sh
case $(uname) in
    Darwin)
	ipconfig getifaddr en0
	;;
    *)
	;;
esac
