#!/bin/sh
#su -c "dbus-send --print-reply --system --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend"
#systemctl suspend
su -c pm-suspend
