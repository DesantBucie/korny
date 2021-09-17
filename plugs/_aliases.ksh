set -o emacs
#Comment below if you are NOT using ksh93u+m
set --nobackslashctrl
# Aliases taken from https://stackoverflow.com/questions/1623256/make-arrow-and-delete-keys-work-in-kornshell-command-line  
alias __H=`echo "\001"`     # home = ^a = start of line
alias __Y=`echo "\005"`     # end = ^e = end of line
alias ls='ls -F'
alias l='ls -la'
[[ $(command -v doas) ]] \
	&& alias sudo='doas'
[[ $(command -v nvim) ]] \
	&& alias vim='nvim'
[[ $(uname) == "SunOS" ]] \
	&& alias whoami="print $LOGNAME" \
	&& alias ls="ls --color"
[[ $(uname) == "OpenBSD" ]] &&\
        alias poweroff="halt -p"
