#Solution thanks to https://github.com/McDutchie and https://github.com/ksh93/ksh
_do_autocd()
{
	if	(($#==1)) && ! command -v "$1" >/dev/null && [[ -d $1 ]]; then
		CDPATH= command cd -- "$1"
		return 2
	fi
}
trap 'eval "_do_autocd ${.sh.command}"' DEBUG
