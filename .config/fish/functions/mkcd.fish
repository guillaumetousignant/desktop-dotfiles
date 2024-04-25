function mkcd --wraps mkdir --description 'alias mkcd=mkdir && cd'
    mkdir $argv
    and cd $argv
end
