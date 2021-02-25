_print_short_pwd()
{
    if [[ "$PWD" == "$HOME" ]]; then 
        print -n "~ "
    elif [[ "$PWD" == "/" ]]; then
        print -n "/ "
    else
        print -n "${PWD##*/} "
    fi
}
_print_pwd()
{
    if [[ "${PWD#$HOME}" != "$PWD" ]]; then
      print -n "~${PWD#$HOME} "
    else
      print -n "$PWD "
    fi
}