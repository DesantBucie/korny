#Solution thanks to https://github.com/McDutchie and https://github.com/ksh93/ksh
_do_autocd()
{
        (($#==1)) && ! command -v "$1" >/dev/null && [[ -d $1 ]] && CDPATH= command cd -- "$1" && return 2
}
trap '((!.sh.level)) && [[ ${.sh.command} != \(* && -o interactive ]] && eval "_do_autocd ${.sh.command}"' DEBUG
