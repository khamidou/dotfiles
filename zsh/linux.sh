#!/usr/bin/env zsh
# Linux-specific settings.

command_exists () {
        type "$1" &> /dev/null ;
}

if command_exists ack-grep ; then
    alias ack='ack-grep' # silly debian and its strange changes
fi

# Commodity aliases for apt-get :
alias apts='apt-cache search'
alias apti='sudo apt-get install'
alias aptr='sudo apt-get remove'

# start firefox and display the profile manager
alias ffo='firefox -no-remote -P'

# redshift, with hardcoded paris location
alias reds='redshift -l 33:-96'
