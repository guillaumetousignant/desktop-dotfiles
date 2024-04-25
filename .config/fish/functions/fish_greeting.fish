function fish_greeting
    #LANG=en_US.UTF-8 fortune | cowsay -f (ls /usr/share/cowsay/cows/ | shuf -n 1)
end
