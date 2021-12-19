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

source ~/.secretsrc

# Add some directories to PATH
PATH=$PATH:~/.local/bin:~/.local/bin/scripts

# Nice colored prompt
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Run pfetch
PF_INFO="ascii title os host kernel uptim wm pkgs memory" pfetch
