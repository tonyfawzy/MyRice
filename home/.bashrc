# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ll='ls -Flh --color=auto'
alias rb='sudo reboot'
alias pf='sudo poweroff'
alias vi='nvim'

PS1='\[\e[1;38;2;203;166;247m\]\w \[\033[0m\]> '

#XBPS
alias i='sudo xbps-install -S -v'
alias u='i; sudo xbps-install -u xbps; sudo xbps-install -u'
alias q='sudo xbps-query -Rs'
alias r='sudo xbps-remove -R'

#Make suckless
alias makesl='rm -rf config.h; sudo make clean install'
