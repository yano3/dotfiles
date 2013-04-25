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
PATH=$HOME/.nodebrew/current/bin:$HOME/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export EDITOR=vim

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
bindkey -e
bindkey "^?" backward-delete-char # for ubuntu linux

# alias
alias ll='ls -lGF'
alias la='ls -lAGF'
alias diff='colordiff'
alias g='git'

# vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%F{green}(%s)-[%f%F{red}%b%f%F{green}]%f'
zstyle ':vcs_info:svn:*' branchformat '%F{red}%b%f%F{green}:r%r%f'
precmd () {
    LANG=en_US.UTF-8 vcs_info
}
RPROMPT='${vcs_info_msg_0_}'

# misc
REPORTTIME=3

