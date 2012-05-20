#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return
#[[ $TERM != "screen" ]] && tmux && exit

alias xterm='xterm -fa Consolas -fs 9 -geometry 85x50 -bg "#fff" -fg "#222"'
alias ls='ls --color=auto'
#PS2='[\u@\h \W]\$ '

source /usr/share/git/completion/git-completion.bash
# For unstaged(*) and staged(+) values next to branch name in __git_ps1
GIT_PS1_SHOWDIRTYSTATE="enabled"

PS1="\[\e[2;37m\][\A] \[\e[0;33m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[32m\]\w\[\e[35m\]\`__git_ps1\` \[\e[31m\]\$\[\e[0m\] "

alias python="python2"
