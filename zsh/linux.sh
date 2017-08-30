#!/usr/bin/env zsh
# Linux-specific settings.

if command_exists ack-grep ; then
    alias ack='ack-grep' # silly debian and its strange changes
fi
