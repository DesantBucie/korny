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

    for color in black red green brown blue magenta cyan white 
    do
        fg+=([$color]=$(tput $cap_setfg $i $i $i))
        bg+=([$color]=$(tput $cap_setbg $i $i $i))
        ((i++))
    done
    fg+=([reset]=$(tput $cap_setfg 7 7 7))
    bg+=([reset]=$(tput $cap_setbg 0 0 0))
}
load_colors
