#!/usr/bin/env nu

$env.sway_socket_to_wake_up = $env.SWAYSOCK? | default (ls /run/user/1000/sway-ipc.* | first | get name)
swaymsg "output DP-2 scale 2"
