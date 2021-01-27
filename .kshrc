HISTFILE="$HOME/.ksh_history"
HISTSIZE=5000
export VISUAL="vim"
export EDITOR="$VISUAL"
export PS1=$'\E[35;7m$(logname)\E[0m:\E[32;1m$PWD \E[0m\E[31;8m$(git branch --show-current 2> /dev/null)\E[0m\E[33;1m =>\E[0m '
set -o emacs
alias __A=`echo "\020"`     # up arrow = ^p = back a command
alias __B=`echo "\016"`     # down arrow = ^n = down a command
alias __C=`echo "\006"`     # right arrow = ^f = forward a character
alias __D=`echo "\002"`     # left arrow = ^b = back a character
alias __H=`echo "\001"`     # home = ^a = start of line
alias __Y=`echo "\005"`     # end = ^e = end of line
. /Users/dsnt/.nix-profile/etc/profile.d/nix.sh
export PATH=~/.npm-global/bin:$PATH
