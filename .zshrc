export LANG=ja_JP.UTF-8
export EDITOR='vim'

autoload -U compinit
compinit

autoload colors
colors

bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

PROMPT='%F{green}[%~ - %*]%f
%(?.%F{blue}.%F{red})[%n@%m]%f%# '
PROMPT2='> ' 

setopt interactive_comments
setopt auto_pushd

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias la='ls -a'
alias ll='ls -l'

case ${OSTYPE} in
darwin*)
  alias ls='ls -FG'
  ;;
linux*)
  alias ls='ls --color'
  ;;
esac

case "${TERM}" in
kterm*|xterm*)
  precmd() {
    echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
  }
  ;;
esac

source ~/.tmuxinator/tmuxinator.zsh
