#!/bin/sh
# see also:
# https://docs.github.com/ja/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints

curl -s https://api.github.com/meta | jq ".ssh_key_fingerprints, .ssh_keys"
