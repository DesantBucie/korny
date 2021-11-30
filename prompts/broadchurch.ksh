PS1='$(tput as)lq$(tput ae)$(tput bold)${fg[blue]}[$RESET'
PS1="$PS1"'${fg[magenta]}$(whoami)$RESET@${fg[magenta]}$(hostname -s)$RESET'
PS1="$PS1"'$(tput bold)${fg[blue]}]$RESET:${fg[cyan]}$(_print_pwd)$RESET '
PS1="$PS1"'${fg[red]}$(tput blink)$(_git_check_changes)$RESET'
PS1="$PS1"'${fg[red]}$(_git_branch)$RESET
'
PS1="$PS1"'$(tput as)mq$(tput ae)>$RESET '

