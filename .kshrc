HISTFILE="$HOME/.ksh_history"
HISTSIZE=5000
THEME=~/korny/themes/otto_colori
cd ~/korny
git pull && echo "Checking upadtes";

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export VISUAL="vim"
export EDITOR="$VISUAL"
export PS1 > $THEME
#export PS1=$'\e[35;7m$($logname)\e[0m:\e[32;1m$PWD \e[0m\e[31;8m$(git branch --show-current 2> /dev/null)\e[0m\e[33;1m =>\e[0m '
set -o emacs
alias __A=`echo "\020"`     # up arrow = ^p = back a command
alias __B=`echo "\016"`     # down arrow = ^n = down a command
alias __C=`echo "\006"`     # right arrow = ^f = forward a character
alias __D=`echo "\002"`     # left arrow = ^b = back a character
alias __H=`echo "\001"`     # home = ^a = start of line
alias __Y=`echo "\005"`     # end = ^e = end of line
alias ls='ls -F'
alias l='ls -la'
