#
# ~/.zshrc
#

autoload -U compinit promptinit
compinit
promptinit
 
# If not running interactively, do not do anyting
#[[ $- != *i* ]] && return
#[[ $TERM != screen* ]] && exec tmux

zstyle ':completion:*' menu select
setopt completealiases

# Binding keys
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# for guake
bindkey "\eOF" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "\e[3~" delete-char # Del
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

#autoload colors ; colors
#source ~/.git-prompt.sh
#GIT_PS1_SHOWDIRTYSTATE=1
#GIT_PS1_SHOWSTASHSTATE=1
#GIT_PS1_SHOWUNTRACKEDFILES=1
#GIT_PS1_SHOWUPSTREAM="auto"
#export PS1="%{$fg[cyan]%}%n%{$fg[blue]%}@%{$fg[magenta]%}%m %{$fg[yellow]%}%~ %{$fg[red]%}$(__git_ps1 " (%s)")%{$fg[green]%}%#%{$reset_color%} "

prompt walters
