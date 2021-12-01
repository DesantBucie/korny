_multiline #If multiline option exists, turn it off.
PS1='$(_ext_ascii lq)$BOLD${fg[blue]}[$RESET'
PS1="$PS1"'${fg[magenta]}$(whoami)$RESET@${fg[magenta]}$(hostname -s)$RESET'
PS1="$PS1"'$BOLD${fg[blue]}]$RESET:${fg[cyan]}$(_print_pwd)$RESET '
PS1="$PS1"'${fg[red]}$(tput blink)$(_git_check_changes)$RESET'
PS1="$PS1"'${fg[red]}$(_git_branch)$RESET
'
PS1="$PS1"'$(_ext_ascii mq)>$RESET '
if [[ $(uname) == "Linux" ]]; then
    export LSCOLORS='di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32'
else
	export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
fi
