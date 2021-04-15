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
load_colors()
{
        typeset -A fg bg
        typeset color
        integer i=0

        while [[ $i -lt 255 ]]  
        do      fg+=([$i]=$(tput $cap_setfg $i))
                bg+=([$i]=$(tput $cap_setbg $i))
                ((i++))
        done
        fg+=([reset]=$(tput sgr0))
        bg+=([reset]=$(tput sgr0))
}
load_colors
