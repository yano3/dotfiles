# lang
LANG=ja_JP.UTF-8
export LANG

# disable stty stop
stty stop undef

# auto completion
autoload -U compinit
compinit

# prompt
setopt prompt_subst
PROMPT=$'%{\e[1;32m%}%n@%m%{\e[1;0m%}:%{\e[1;35m%}%~%{\e[1;0m%}%(!.#.$) '

# path
PATH=$HOME/.nodebrew/current/bin:$HOME/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export EDITOR=vim
export GOPATH=$HOME
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups

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
if [[ -f `command -v colordiff` ]]; then
  alias diff='colordiff'
fi
alias g='git'
alias be='bundle exec'
alias v='vagrant'
alias d='docker'
alias k='kubectl'
alias tf='terraform'
alias ack='rg'

# vcs_info
autoload -Uz is-at-least
if is-at-least 4.3.10; then
    autoload -Uz vcs_info
    zstyle ':vcs_info:*' formats '%F{green}(%s)-[%f%F{red}%b%f%F{green}]%f'
    zstyle ':vcs_info:svn:*' branchformat '%F{red}%b%f%F{green}:r%r%f'
    precmd () {
        LANG=en_US.UTF-8 vcs_info
    }
    RPROMPT='${vcs_info_msg_0_}'
fi

# misc
REPORTTIME=3

# source private.zsh
if [ -f ~/.zsh.d/private.zsh ]; then
  source ~/.zsh.d/private.zsh
fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# peco
function peco-src () {
    local selected_dir=$(ghq list --full-path | peco --initial-filter SmartCase --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src

function peco-select-history() {
    BUFFER=$(fc -l -r -n 1 | peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle redisplay
}
zle -N peco-select-history

if [[ -f `command -v peco` ]]; then
    bindkey '^S' peco-src
    bindkey '^r' peco-select-history
fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# direnv
eval "$(direnv hook zsh)"

# perlbrew
source ~/perl5/perlbrew/etc/bashrc

# phpenv
export PHPENV_ROOT="$HOME/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi
