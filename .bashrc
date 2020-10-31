#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1="\W \\$ \[$(tput sgr0)\]"

# Cursor
printf '\033[5 q\r'

# aliasses
alias ls='ls --color=auto'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias dotadd='dotfiles add'
alias dotcom='dotfiles commit -m'
alias dotpush='dotfiles push'
alias weather='curl wttr.in'
