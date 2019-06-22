#!/bin/sh
set -eu
## called from `launchctl load ~/Library/LaunchAgents/user.environ.plist`

launchctl setenv LANG ja_JP.UTF-8
launchctl setenv GOPATH $($SHELL -lc "printenv GOPATH")

## Set PATH with .bashrc enabled
LOGIN_PATH=$($SHELL -lc "printenv PATH")
launchctl setenv PATH "${LOGIN_PATH:-$PATH}"

## Restart Dock
#osascript -lJavaScript -e 'Application("Dock").quit()'
killall Dock
