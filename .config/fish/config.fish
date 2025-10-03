if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx MICRO_TRUECOLOR 1
    set -gx FZF_DEFAULT_COMMAND "fd --type file --color=always"
    set -gx FZF_DEFAULT_OPTS "--ansi --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
    set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    set -gx LMOD_COLORIZE YES
    set -gx EDITOR /usr/bin/micro
    set -gx PAGER /usr/bin/most
    set -gx MOST_EDITOR "micro +%d:1 %s"
    set -gx SLANG_EDITOR "micro +%d:1 %s"
    set -gx GPG_TTY $(tty)
    set -gx BEETSDIR $HOME/Musique/Musique

    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/.local/bin

    zoxide init fish | source
    starship init fish | source
end
