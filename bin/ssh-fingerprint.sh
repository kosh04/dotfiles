#!/bin/bash
set -e
usage="usage: $0 [-E fingerprint_hash} [--] [keyfile]"

fingerprint_hash=sha256

while getopts E: OPT
do
    case $OPT in
        E) fingerprint_hash="$OPTARG" ;;
        *)
            echo 1>&2 "$usage"
            exit 2 ;;
    esac
done
shift $((OPTIND - 1))

keyfile=${1}

if [ -r "$keyfile" ]
then
    ssh-keygen -E "$fingerprint_hash" -lf "$keyfile"
else
    ssh-add -E "$fingerprint_hash" -l
fi
