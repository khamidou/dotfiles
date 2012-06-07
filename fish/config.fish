alias l=less

env GEM_HOME ~/.gems/

# Set an appropriate path - I usually store some binaries in the folder 
# ~/usrbin.
# Duplicated the line because of a stupid bug in tcsh
set PATH ~/.bin:$PATH
set PATH $GEM_HOME/bin:$PATH

set LESS "-Q"
set EDITOR "emacs -nw"

alias m=make
alias emacs="emacs23 -nw"   # emacs21 is better - but emacs22 has python-mode
alias l=less
alias n=mc
alias sl=ls
alias telnel=telnet  # This one is particularly annoying.
alias cls=clear
alias mdir="mkdir -p"  # This alias supersedes mtool's mdir but who uses msdos ?

# git aliases
alias co="git checkout"
alias br="git branch"
alias ch="git cherry-pick"
alias cm="git commit"
alias st="git status"
alias pu="git push"

alias pk="pkill"

alias lint="splint" # I keep confusing splint and split

alias spindent="indent -bad -bap -nsob -cdb -sc -br -cdw -cli3 -npcs -cs -nbc -brs -bbo"

alias pig="ping google.com"

# Commodity aliases for apt-get :
alias apts="apt-cache search"
alias apti="sudo apt-get install"
alias aptr="sudo apt-get remove"

alias nautilus="nautilus --no-desktop"

alias w-c="wicd-curses"
alias sflew="ssh neyret.fr"
