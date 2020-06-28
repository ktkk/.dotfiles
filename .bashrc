#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# pywal
#(cat ~/.cache/wal/sequences &)

# aliasses
alias ls='ls --color=auto'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias dotadd='dotfiles add'
alias dotcom='dotfiles commit -m'
alias dotpush='dotfiles push'
