#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$HOME/bin"

alias ls='ls --color=auto'
alias la='ls -a'
PS1='[\u@\h \W]\$ '

export TERM="screen-256color"
