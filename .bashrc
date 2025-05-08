#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pbcopy='clipse -c'
PS1='[\u@\h \W]\$ '

EDITOR=nvim

if uwsm check may-start && uwsm select; then
	exec uwsm start default
fi

alias dots='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

