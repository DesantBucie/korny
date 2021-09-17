PS1.get() 
{
        #If you want to declare custom color, use built in function, and pass color's number
        #Then use${cfg[number]} for foreground or ${cbg[number]} for background
        #This funtion provides compatibility layer between oses.
        custom_color light_brown 94
        custom_color red 196
        custom_color blue 27
        custom_color green 40
        .sh.value="${cfg[light_brown]}$(tput bold)[$(_print_short_pwd)]${fg[reset]}${cfg[red]} $(_git_prompt)${fg[reset]}${cfg[blue]}$(_fastboot_rdy)${fg[reset]}${cfg[green]}$(_adb_rdy)${fg[reset]}"
}
export CLICOLOR=1

[[ $(uname) == "Linux" ]] \
	&& export LSCOLORS='di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32' \
	|| export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

