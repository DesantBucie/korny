set -A fg
set -A bg
set -A cfg
set -A cbg
typeset -x cap_setfg cap_setbg
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
        typeset -x $1=$2
        cfg[$2]=$(tput $cap_setfg $2 $2 $2)
        cbg[$2]=$(tput $cap_setbg $2 $2 $2)

}
load_colors()
{
        typeset -x black=0 red=1 green=2 brown=3 blue=4 magenta=5 cyan=6 white=7 RESET=$(printf '\033[0;10m')
        integer i=0
        while (( $i < 8 ))
        do 
            fg[$i]=$(tput $cap_setfg $i $i $i)
            bg[$i]=$(tput $cap_setbg $i $i $i)
            (( i=$i+1 ))
        done
}
load_colors
