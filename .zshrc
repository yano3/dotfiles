# lang
LANG=ja_JP.UTF-8
export LANG

# auto completion
autoload -U compinit
compinit

# prompt
setopt prompt_subst 
PROMPT=$'%{\e[1;32m%}%n@%m%{\e[1;0m%}:%{\e[1;34m%}%~%{\e[1;0m%}%(!.#.$) '

# path
PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_ignore_dups

# pushd
setopt auto_pushd
setopt pushd_ignore_dups

# change directory without cd command
setopt auto_cd

# beep
setopt nobeep

# bindkey
bindkey "^?" backward-delete-char # for ubuntu linux

# alias
alias 'll=ls -l'
alias 'la=ls -lA'
