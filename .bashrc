#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[0;32m\][\d \t]\[\e[0;31m\][\u@\h \[\e[0;36m\]\w\[\e[0;31m\]]\$\[\e[0m\] '
