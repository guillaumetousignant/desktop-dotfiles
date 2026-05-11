#!/usr/bin/env nu

$env.SWAYSOCK = $env.SWAYSOCK? | default (ls /run/user/1000/sway-ipc.* | first | get name)
swaymsg "output HDMI-A-1 disable"
