
export PS1=$'\E[35;7m$(whoami)\E[0m:\E[32;1m$PWD \E[0m\E[31;8m$(git rev-parse --abbrev-ref HEAD 2> /dev/null)\E[0m\E[31;8m$(hg branch 2> /dev/null)\E[0m\E[33;1m =>\E[0m '

export CLICOLOR=1

if [ $(uname) == "Linux" ]; then
	export LSCOLORS='di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32'
else
	export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
fi

export VISUAL="vim"
export EDITOR="$VISUAL"
