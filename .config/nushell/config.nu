# Nushell Config File

# The default config record. This is where much of your global configuration is setup.
$env.config = {
    show_banner: false # true or false to enable or disable the welcome banner at startup

    history: {
        file_format: "sqlite"
        isolation: true
    }
}

alias http = ^http
alias please = sudo
alias fuck = thefuck $"(history | last 1 | get command | get 0)"
alias sorry = sudo ...(history | last | get command | split row " ")

# Create a directory and move to it
def --env mkcd [
	directory: path  # Directory to create and move to
] {
	mkdir $directory
	cd $directory
}

use ~/.cache/starship/init.nu
source ~/.cache/zoxide/init.nu
source $"($nu.home-path)/.cargo/env.nu"
