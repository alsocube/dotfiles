#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[38;5;177;1;5m\]\w\[\e[0m\] [\[\e[92m\]\u\[\e[0m\]]\$ '
HISTSIZE=5000
HISTCONTROL=ignoredups
