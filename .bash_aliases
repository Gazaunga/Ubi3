# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Get my IP address using HTTPS.
alias httpsip='curl -s https://4.ifcfg.me/'

#resolution for your system
alias res='xdpyinfo | grep resolution'

alias shot="scrot ~/Screenshots/`date +%y-%m-%d-%H:%M:%S`.png"

alias fuck="sudo !!"

alias brc='emacs ~/.bashrc'

alias bsu='source ~/.bashrc'

alias q='exit'

alias cp='cp -r'

alias texupdate='tlmgr update --all'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias exe='sudo chmod +x'

# make `less` not clear the screen upon exit
alias less='less -X'

alias path='echo $PATH | tr -s ":" "\n"'

# fonts
alias fontc='fc-cache -fv'
