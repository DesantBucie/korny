#You can use up to 255 numers, use https://jonasjacek.github.io/colors/ 
PS1.get()
{
	! [[ ${SSH_TTY} == $(tty) ]] \
		&& .sh.value="${bg[5]}${fg[0]}$(whoami)${fg[reset]}${bg[reset]}:" || \
		.sh.value="${bg[14]}${fg[0]}$(whoami)@ssh${fg[reset]}${bg[reset]}:"

	.sh.value+="${fg[2]}$(_print_short_pwd)${fg[reset]}"
	.sh.value+="${fg[9]}$(_git_prompt)${fg[reset]}"
	.sh.value+="${fg[3]}-\> ${fg[reset]}"
}
export CLICOLOR=1

[[ $(uname) == "Linux" ]] \
	&& export LSCOLORS='di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32' \
	|| export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

