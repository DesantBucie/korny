#If you want to declare custom color, use built in function, and pass color's number from
#https://jonasjacek.github.io/colors/
# Add prefix c_ to be sure that you don't overwrite basic 8 colors. It won't do any harm, but readability will be better
custom_color light_brown 94
custom_color c_red 196
custom_color c_blue 27
custom_color c_green 40
PLUG_WARN='Load android plugin in order to use this prompt'
#bold prints bold characters, it's stopped however by $RESET
PS1='$BOLD${cfg[light_brown]}[$(_print_short_pwd)]$RESET '
PS1="$PS1"'${cfg[c_red]}$(_git_prompt)$RESET'
PS1="$PS1"'${cfg[c_green]}$(_adb_rdy)$RESET'
command -v _adb_rdy > /dev/null || PS1="$PS1"'$(echo $PLUG_WARN) '
_ls_colors

