case $(uname) in
FreeBSD)
        cap_setfg=AF
        cap_setbg=AB
        ;;
*)
        cap_setfg=setaf
        cap_setbg=setab
        ;;
esac
custom_color()
{
        typeset -A cfg cbg
        cfg+=([$1]=$(tput $cap_setfg $2 $2 $2))
        cbg+=([$1]=$(tput $cap_setbg $2 $2 $2))

}
load_colors()
{
        typeset -A fg bg
        typeset color
        integer i=0
        #I removed 256 colors as it was slow on some systems, you can still use it, but you have to decalre it yourself 
        for color in black red green brown blue magenta cyan white   
        do      fg+=([$color]=$(tput $cap_setfg $i $i $i))
                bg+=([$color]=$(tput $cap_setbg $i $i $i))
                ((i++))
        done
        fg+=([reset]=$(printf '\033[0;10m'))
        bg+=([reset]=$(printf '\033[0;10m'))
}
load_colors
