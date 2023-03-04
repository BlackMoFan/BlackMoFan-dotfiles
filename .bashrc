#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# TO SET THE MAXIMUM NUMBER OF FOLDER NAMES THAT CAN BE DISPLAYED IN TERMINAL WHEN CHANGING DIRECTORY
PROMPT_DIRTRIM=1

alias ls='ls --color=auto'
alias ll='exa -lhgia'
alias ls='exa -h'
alias cd-userhome='cd /mnt/c/Users/Ganor'
alias jnb='jupyter-notebook'

#export PS1='[\u@\h \W]\$ '
export PS1='must focus \[\e[1;33m\]::\[\e[0m\] \[\e[1;32m\]\w\[\e[0m\] \[\e[1;35m\]>>\[\e[0m\] \$ '
#export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '

export EDITOR='vim'
export PATH="$PATH:$HOME/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

. ./z/z.sh
. "$HOME/.cargo/env"
