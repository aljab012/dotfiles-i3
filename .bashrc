#
# ~/.bashrc
#

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias pacman="sudo pacman"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
