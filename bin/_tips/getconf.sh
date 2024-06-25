#!/bin/sh

# man:getconf -- retrieve standard configuration variables
_getconf() {
    echo "$1 = $(getconf "$1")"
    
}
_getconf _POSIX_VERSION
_getconf LONG_BIT
_getconf PATH
