#Solution thanks to https://github.com/McDutchie and https://github.com/ksh93/ksh
_do_autocd()
{
	if	    [[ -d "$1" ]]
	then	
		    CDPATH= command cd -- "$@"
		    return 2
	fi
}
trap 'eval "_do_autocd ${.sh.command}"' DEBUG
