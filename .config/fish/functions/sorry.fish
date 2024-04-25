function sorry --description 'Run last command as root'
    eval sudo $history[1]
end
