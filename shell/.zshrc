#!/bin/zsh

source $ENV
setopt histignorealldups
SAVEHIST=5000
autoload -U compinit && compinit
bindkey -v '^h' backward-delete-char

PS1='%F{11}[%~]%(!.#.$)%F{7} '
