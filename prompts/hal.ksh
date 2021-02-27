PS1.get() 
{
	.sh.value="$(whoami)@$(hostname -s)"
	.sh.value+="$(_pwd_prompt)"
}
