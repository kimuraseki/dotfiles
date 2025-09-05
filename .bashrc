#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias jp='~/bash_jp.sh'

JP_USER="クリス"

daily_cherry_petals() {
    local seed=$(date +%Y%m%d)
    RANDOM=$seed
    local count=$(( RANDOM % 5 + 1 ))
    echo "$(printf '🌸%.0s' $(seq 1 $count))"
}

echo -e "\e[1;38;5;218mこんにちはダーリン！✨\e[0m"
PS1='\[\e[1;38;5;218m\][\d \t '"$(daily_cherry_petals)"']\[\e[1;38;5;160m\]['"$JP_USER"'@\h \[\e[1;38;5;51m\]\w\[\e[1;38;5;160m\]]\$\[\e[0m\] '

# Point ssh-agent to the correct socket
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

