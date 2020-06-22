#!/usr/bin/env zsh
# Darwin-specific settings.
alias ls='ls -G'

# Open new tabs in the same directory.
precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}
chpwd () {print -Pn "\e]2; %~/ \a"}
