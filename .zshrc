export LANG=ja_JP.UTF-8

autoload -U compinit
compinit

autoload colors
colors

bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

PROMPT='%F{blue}%n@%m%f%# '
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
