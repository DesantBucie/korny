_print_short_pwd()
{
       { [[ "$PWD" == "$HOME" ]] || [[ "$PWD" == "/usr$HOME" ]] && print -n "~ "; } || { [[ "$PWD" == "/" ]] && print -n "/ "; } || print -n "${PWD##*/} "
}
_print_pwd()
{
    [[ "${PWD#$HOME}" != "$PWD" ]] && print -n "~${PWD#$HOME} " || print -n "$PWD "
}
