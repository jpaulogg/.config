# Arquivo de Inicialização do Shell (*ksh, zsh, bash, ...)

# OPÇÕES -----------------------------------------------------------
set -o noclobber
HISTSIZE=5000
HISTFILE=$XDG_CACHE_HOME/$(ps -q $$ -ocomm=)_histfile
HISTCONTROL=ignoredups

# ARQUIVOS EXTERNOS ------------------------------------------------
[ -e $XDG_CONFIG_HOME/shell/functions ] && . $XDG_CONFIG_HOME/shell/functions
[ -e $XDG_CONFIG_HOME/shell/aliasrc ] && . $XDG_CONFIG_HOME/shell/aliasrc

# oksh
[ "${0##*[/-]}" = "oksh" -a -e $XDG_CONFIG_HOME/shell/.oksh_complete ] \
	&& . $XDG_CONFIG_HOME/shell/.oksh_complete

# PROMPT -----------------------------------------------------------

if [ $(id -u) -eq 0 ]; then
	PS1='[31m'   # vermelho
else
	PS1='[93m'   # amarelo
fi

PS1="${PS1}[\W]\\$[0m "
