#if true then normal prompt will be printed, if not, ssh part
! [[ ${SSH_TTY} == $(tty) ]] \
&& PS1='${fg[black]}${bg[magenta]}$(whoami)$RESET:' \
|| PS1='${fg[black]}${bg[cyan]}$(whoami)@ssh$RESET:'
PS1="$PS1"'${fg[green]}$(_print_short_pwd) $RESET'
PS1="$PS1"'${fg[red]}$(_git_prompt)$RESET'
PS1="$PS1"'${fg[brown]}-> $RESET'
export CLICOLOR=1
# This are colors for ls program
if [[ $(uname) == "Linux" || $(uname) == "SunOS" ]]; then
	export LSCOLORS='di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32'
else 
	export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
fi

