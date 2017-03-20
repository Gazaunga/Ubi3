# Use the system config if it exists
if [ -f /etc/bashrc ]; then
    . /etc/bashrc        # --> Read /etc/bashrc, if present.
elif [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc   # --> Read /etc/bash.bashrc, if present.
fi

# The following lines are only for interactive shells
[[ $- = *i* ]] || return

# Use Bash completion, if installed
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Use Liquid Prompt (but not in interactive shells)
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt

# Source global definitions
[ -f /etc/bashrc ] && source /etc/bashrc

[ -f ~/.bash_aliases ] && source ~/.bash_aliases

[ -f ~/bin/.scripts/utils.sh ] && source ~/bin/.scripts/utils.sh

[ -f ~/.bash_functions ] && source ~/.bash_functions

# If it is a normal terminal, exec tmux
#[[ $TERM = "screen-256color" || $TERM = "urxvt" ]] && exec tmux

# Auto-correct misspelled directories
shopt -s dirspell direxpand

# Check the window size after each command and, if necessary,
# Update the values of LINES and COLUMNS.
shopt -s checkwinsize

# The pattern "**" used in a pathname expansion context will
# Match all files and zero or more directories and subdirectories.
shopt -s globstar

# Extended pattern matching features are enabled
shopt -s extglob

# Include filenames beginning with a '.' in the results of pathname expansions
shopt -s dotglob

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Reclaim Ctrl-S and Ctrl-Q used for suspend/resume and use it for modern mapppings
stty -hupcl -ixon -ixoff
stty stop undef
stty susp undef

if [ "$TERM" = "screen" ]; then
    export TERM=screen-256color
fi

export XDG_CONFIG_HOME=$HOME/.config
