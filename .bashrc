#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias jp='~/bash_jp.sh'
PS1='\[\e[1;38;5;218m\][\d \t]\[\e[1;38;5;160m\][\u@\h \[\e[1;38;5;51m\]\w\[\e[1;38;5;160m\]]\$\[\e[0m\] '

# Point ssh-agent to the correct socket
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

