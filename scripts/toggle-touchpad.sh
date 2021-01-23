#!/bin/bash
if xinput list-props 12 | grep "Device Enabled (186):	1" >/dev/null
then
    xinput disable 12
    notify-send -u low -i mouse "Trackpad disabled"
else
    xinput enable 12
    notify-send -u low -i mouse "Trackpad enabled"
fi
