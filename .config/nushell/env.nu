# Nushell Environment Config File
#
# version = "0.92.1"

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# $env.PATH = ($env.PATH | split row (char esep) | prepend '/some/path')
# An alternate way to add entries to $env.PATH is to use the custom command `path add`
# which is built into the nushell stdlib:
# use std "path add"
# $env.PATH = ($env.PATH | split row (char esep))
# path add /some/path
# path add ($env.CARGO_HOME | path join "bin")
# path add ($env.HOME | path join ".local" "bin")
# $env.PATH = ($env.PATH | uniq)

# To load from a custom file you can use:
# source ($nu.default-config-dir | path join 'custom.nu')

$env.MICRO_TRUECOLOR = 1
$env.FZF_DEFAULT_COMMAND = "fd --type file --color=always"
$env.FZF_DEFAULT_OPTS = "--ansi --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
$env.FZF_CTRL_T_COMMAND = "$FZF_DEFAULT_COMMAND"
$env.LMOD_COLORIZE = "YES"
$env.EDITOR = "/usr/bin/micro"
$env.PAGER = "/usr/bin/most"
$env.MOST_EDITOR = "micro +%d:1 %s"
$env.SLANG_EDITOR = "micro +%d:1 %s"
$env.GPG_TTY = (tty)

$env.PATH = ($env.PATH | split row (char esep)
  | prepend ($env.HOME | path join .cargo bin)
  | prepend ($env.HOME | path join .local bin)
  | uniq)

source ($nu.default-config-dir | path join 'starship.nu')
source ($nu.default-config-dir | path join 'zoxide.nu')
