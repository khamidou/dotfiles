#!/usr/bin/env zsh
# Darwin-specific settings.
alias ls='ls -G'

# Open new tabs in the same directory.
darwin_precmd () {print -Pn "\e]2; %~/ \a"}
darwin_preexec () {print -Pn "\e]2; %~/ \a"}
chpwd () {print -Pn "\e]2; %~/ \a"}

[[ -z $precmd_functions ]] && precmd_functions=()
precmd_functions=($precmd_functions darwin_precmd)

[[ -z $preexec_functions ]] && preexec_functions=()
preexec_functions=($preexec_functions darwin_preexec)
