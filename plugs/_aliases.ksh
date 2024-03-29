set -o emacs
# Aliases taken from https://stackoverflow.com/questions/1623256/make-arrow-and-delete-keys-work-in-kornshell-command-line  
alias __H='echo "\001"'     # home = ^a = start of line
alias __Y='echo "\005"'     # end = ^e = end of line
alias ..='cd ..'
#alias ls='ls -GF'
#alias l='ls -Gla'
[[ $(uname) == "SunOS" ]] \
	&& alias whoami='print $LOGNAME' \
	&& alias ls="ls --color"
[[ $(uname) == "OpenBSD" ]] \
    && alias poweroff="halt -p"
