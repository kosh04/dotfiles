#!/bin/sh
set -eu

## Called from `launchctl load ~/Library/LaunchAgents/user.environ.plist`
_install() {
    path=${1}
    tee "${path}" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>user.environ</string>

  <key>ProgramArguments</key>
  <array>
    <string>/bin/sh</string>
    <string>$HOME/.local/macos/setenv.sh</string>
  </array>

  <key>StandardOutPath</key>
  <string>$HOME/.local/macos/setenv.log</string>
  <key>StandardErrorPath</key>
  <string>$HOME/.local/macos/setenv.log</string>

  <key>EnvironmentVariables</key>
  <dict>    
    <key>PATH</key>
    <string>/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin</string>
  </dict>

  <key>RunAtLoad</key>
  <true/>
</dict>
</plist>
EOF
}

if [ "${1}" = "--install" ]; then
    _install ~/Library/LaunchAgents/user.environ.plist
    exit
fi

launchctl setenv LANG ja_JP.UTF-8
launchctl setenv GOPATH $($SHELL -lc "printenv GOPATH")

## Set PATH with .bashrc enabled
LOGIN_PATH=$($SHELL -lc "printenv PATH")
launchctl setenv PATH "${LOGIN_PATH:-$PATH}"

## Restart Dock
#osascript -lJavaScript -e 'Application("Dock").quit()'
killall Dock
