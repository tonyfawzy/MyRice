#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls -Flh --color=auto'
alias grep='grep --color=auto'
alias rb='sudo reboot'
alias pf='sudo poweroff'
alias vi='nvim'

PS1='\[\e[1;38;2;203;166;247m\]\w \[\033[0m\]> '

alias i='sudo pacman -Sy'
alias q='sudo pacman -Ss'
alias u='sudo pacman -Syu'
alias r='sudo pacman -Rns'

#Make suckless
alias makesl='rm -rf config.h;sudo make clean install'
