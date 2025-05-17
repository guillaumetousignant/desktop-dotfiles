#!/usr/bin/env nu

def main [x_res: int, y_res: int, factor: float] {
	$env.SWAYSOCK = $env.SWAYSOCK? | default (ls /run/user/1000/sway-ipc.* | first | get name)
	swaymsg $"output DP-2 resolution ($x_res)x($y_res) scale ($factor)"
}
