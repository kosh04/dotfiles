#!/bin/sh
systemctl suspend
#su -c "dbus-send --print-reply --system --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend"
#su -c pm-suspend
