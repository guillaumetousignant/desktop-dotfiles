#!/usr/bin/env nu

def main [] {
	$env.SWAYSOCK = $env.SWAYSOCK? | default (ls /run/user/1000/sway-ipc.* | first | get name)
	swaymsg $"output DP-2 resolution 3840x2160 scale 2"
}
