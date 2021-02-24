PROMPT=${bg[magenta]}$(whoami)${bg[reset]}
PROMPT+=$':\e[32;1m$(_print_pwd)\e[0m'
PROMPT+=$'\e[31;8m$(_git_prompt)\e[0m'
PROMPT+=$'\e[33;1m=>\e[0m '
PS1=$PROMPT
export PS1
export CLICOLOR=1

if [ $(uname) == "Linux" ]
then
	export LSCOLORS='di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32'
else
	export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
fi

export VISUAL="vim"
export EDITOR="$VISUAL"
