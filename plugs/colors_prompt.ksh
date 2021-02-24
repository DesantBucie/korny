case $(uname) in
    FreeBSD)
        cap_setfg=AF
        cap_setbg=AB
        ;;
    Linux,Darwin,*)
        cap_setfg=setaf
        cap_setbg=setab
        ;;
esac
typeset -A fg bg

load_colors()
{
    typeset color
    integer i=0

    for color in black red green brown blue magenta cyan white 
    do
        fg+=([$color]=$(tput $cap_setfg $i))
        bg+=([$color]=$(tput $cap_setbg $i))
        (( i++ ))
    done
    fg+=([reset]=$(tput $cap_setfg 9))
    bg+=([reset]=$(tput $cap_setbg 9))
}
