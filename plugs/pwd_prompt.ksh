_print_pwd()
{
    if [[ "$PWD" == "$HOME" ]] 
    then 
        print -n "~ "
    elif [[ "$PWD" == "/" ]]
    then
        print -n "/ "
    else
        print -n "${PWD##*/} "
    fi
}
