#!/usr/bin/env nu

def main [factor: float] {
	$env.SWAYSOCK = $env.SWAYSOCK? | default (ls /run/user/1000/sway-ipc.* | first | get name)
	swaymsg $"output DP-2 scale ($factor)"
}
