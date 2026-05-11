#!/usr/bin/env nu

$env.SWAYSOCK = $env.SWAYSOCK? | default (ls /run/user/1000/sway-ipc.* | first | get name)
swaymsg "focus output DP-2"
