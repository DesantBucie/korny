#You can use up to 255 numers, use https://jonasjacek.github.io/colors/ 
PS1.get()
{
#If SSH_TTY == tty that means, computer is not remotely accesed. If SSH_TTY != tty, that means it's SSH session, so we return cyan colored name
	! [[ ${SSH_TTY} == $(tty) ]] \
		&& .sh.value="${bg[magenta]}${fg[black]}$(whoami)${fg[reset]}${bg[reset]}:" || \
		.sh.value="${bg[cyan]}${fg[black]}$(whoami)@ssh${fg[reset]}${bg[reset]}:"

	.sh.value+="${fg[green]}$(_print_short_pwd)\ ${fg[reset]}"
	.sh.value+="${fg[red]}$(_git_prompt)${fg[reset]}"
    # Remember to reset at the and, so the whole terminal won't be painted
	.sh.value+="${fg[brown]}-\> ${fg[reset]}"
}
export CLICOLOR=1
# This are  colors for ls program
[[ $(uname) == "Linux" || $(uname) == "SunOS" ]] \
	&& export LSCOLORS='di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32' \
	|| export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

