_print_short_pwd()
{
	if [[ "$PWD" == "$HOME" ]] || [[ "$PWD" == "/usr$HOME" ]]; then
		echo -n "~" 
	elif [[ "$PWD" == "/" ]]; then
		echo -n "/" 
    else
        echo -n "${PWD##*/}"
    fi
}
_print_pwd()
{
    [[ "${PWD#$HOME}" != "$PWD" ]] && echo -n "~${PWD#$HOME}" || echo -n "$PWD"
}
