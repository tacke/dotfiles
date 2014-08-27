export LANG=ja_JP.UTF-8

autoload -U compinit
compinit

autoload colors
colors

bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

PROMPT='%(?.%F{blue}.%F{red})%n@%m%f%# '
PROMPT2='> ' 
RPROMPT='[%F{green}%~%f]'

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
  #export LSCOLORS=exfxcxdxbxegedabagacad
  #export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
  #zstyle ':completion:*' list-colors \
  #  'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
  ;;
esac
