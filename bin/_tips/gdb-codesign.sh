#!/bin/sh
set -eux

# Homebrew 経由でインストールした GDB をコード署名する
# https://sourceware.org/gdb/wiki/BuildingOnDarwin
# https://sourceware.org/gdb/wiki/PermissionsDarwin

GDB=$(command -v gdb)

codesign --force --verify --verbose \
         --entitlements "$HOME/.config/gdb/entitlements.plist" \
         --sign gdb-cert \
         --timestamp \
         "$GDB"

codesign -vv --display --entitlements - "$GDB"
