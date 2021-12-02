#if true then normal prompt will be printed, if not, ssh part
! [[ ${SSH_TTY} == $(tty) ]] \
&& PS1='${fg[black]}${bg[magenta]}$(whoami)$RESET:' \
|| PS1='${fg[black]}${bg[cyan]}$(whoami)@ssh$RESET:'
PS1="$PS1"'${fg[green]}$(_print_short_pwd) $RESET'
PS1="$PS1"'${fg[red]}$(_git_prompt)$RESET'
PS1="$PS1"'${fg[brown]}-> $RESET'

_ls_colors
