_multiline #If multiline option exists, turn it off.
PS1='$BOLD${fg[blue]}[$RESET'
PS1="$PS1"'${fg[magenta]}$(whoami)$RESET@${fg[magenta]}$(hostname -s)$RESET'
PS1="$PS1"'$BOLD${fg[blue]}]$RESET:${fg[cyan]}$(_print_pwd)$RESET '
PS1="$PS1"'${fg[red]}$(_blink)$(_git_check_changes)$RESET'
PS1="$PS1"'${fg[red]}$(_git_branch)$RESET
'
PS1="$PS1"'->$RESET '
_ls_colors
