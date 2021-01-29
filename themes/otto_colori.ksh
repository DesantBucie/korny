export PS1=$'\E[35;7m$(logname)\E[0m:\E[32;1m$PWD \E[0m\E[31;8m$(git branch --show-current 2> /dev/null)\E[0m\E[31;8m$(hg branch 2> /dev/null)\E[0m\E[33;1m =>\E[0m '
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export VISUAL="vim"
export EDITOR="$VISUAL"
