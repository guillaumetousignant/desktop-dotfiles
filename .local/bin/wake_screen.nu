#!/usr/bin/env nu

$env.SWAYSOCK = $env.SWAYSOCK? | default (ls /run/user/1000/sway-ipc.* | first | get name)

let outputs_all_on = (swaymsg -t get_outputs | jq -r '[.[].active] | all(.)')

match $outputs_all_on {
	"true" => {
		print -e "Outputs already on"
	},
	"false" => {
		print -e "Outputs not all on"
		let result = (swaymsg "output * power on")
		print -e $result
	},
	_ => {
		print -e $"Received unknown response \"($outputs_all_on)\""
		exit 1
	}
}
