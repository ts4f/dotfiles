#!/bin/bash
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# # Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# http://www.biostat.jhsph.edu/~afisher/ComputingClub/webfiles/KasperHansenPres/IntermediateUnix.pdf
# https://unix.stackexchange.com/questions/48713/how-can-i-remove-duplicates-in-my-bash-history-preserving-order
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=10000
shopt -s histappend
shopt -s cmdhist


# Auto-complete command from history
# http://lindesk.com/2009/04/customize-terminal-configuration-setting-bash-cli-power-user/
export INPUTRC=~/.inputrc


# export PS1="\[\e[0;33m\]\A \W \$ \[\e[m\]"

# # Aliases
# http://superuser.com/questions/384769/alias-rm-rm-i-considered-harmful
alias rmi='rm -i'
# alias ls='ls -l --color'
# alias grep='grep -n --color'

# export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init bash)"

# Configuration for thefuck pip variant
# export PYTHONIOENCODING="utf-8"
# eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
# eval $(thefuck --alias FUCK)
