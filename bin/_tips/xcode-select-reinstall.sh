#!/bin/sh
sudo rm -r "$(xcode-select --print-path)"
xcode-select --install
