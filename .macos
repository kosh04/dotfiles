#!/bin/sh

# show macos version
sw_vers

# set user defaults preferences [~/Library/Preferences/*.plist]
# https://ss64.com/osx/defaults.html

## Finder
# show hidden files/dirs by default
defaults write com.apple.finder AppleShowAllFiles -bool true
# show full path in title-bar
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true

# dont create .DS_Store on samba
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# shut up 「"◯◯◯"はインターネットからダウンロードされたアプリケーションです。開いてもよろしいですか？」
defaults write com.apple.aunchServices LSQuarantine -bool false
