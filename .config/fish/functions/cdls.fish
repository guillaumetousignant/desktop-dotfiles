function cdls --wraps cd --description 'alias cdls=cd && eza'
    cd $argv[1]
    and eza $argv[2..-1]
end
