#!/bin/bash

PATH=$PATH:$HOME/bin

# Environment

export EDITOR='emacs'
export GIT_EDITOR='/usr/bin/emacs'
export BROWSER=qutebrowser
export TERMINAL=urxvt
export FILEBROWSER=nautilus


# autostartx if running on the first tty:
[[ -z $DISPLAY && $XDG_VTNR -eq 1 && -z $TMUX ]] && exec startx

. ~/.bash_aliases
. ~/.bash_functions
. ~/bin/utils.sh
