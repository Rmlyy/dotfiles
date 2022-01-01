# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias c='clear'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias sxiv='devour sxiv'
alias mpv='devour mpv'
alias ncdu='ncdu --color dark'

source ~/.secretsrc

# Add some directories to PATH
PATH=$PATH:~/.local/bin:~/.local/bin/scripts

# Nice colored prompt
PS1="\[$(tput bold)\]\[$(tput setaf 7)\][\[$(tput setaf 6)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 7)\]\h \[$(tput setaf 4)\]\W\[$(tput setaf 7)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Execute a random color script
find .local/bin/scripts/colorscripts -type f | shuf -n 1 | sh
