set -A fg bg cfg cbg
export cap_setfg=setaf 
export cap_setbg=setab
case $(uname) in
FreeBSD)
        cap_setfg=AF
        cap_setbg=AB
        ;;
esac
_multiline(){
    if [[ $(set -o | grep multiline) == *"multiline"* ]]; then
        set +o multiline
    fi
}
_ls_colors(){
    export CLICOLORS=1
    if [[ -z "$1" || -z "$2" ]]; then
        if [[ $(uname) == "Linux"  || $(uname) == "SunOS" ]]; then
            export LSCOLORS='di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32'
        else
            export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
        fi
    else
        if [[ $(uname) == "Linux"  || $(uname) == "SunOS" ]]; then
            export LSCOLORS="$1"
        else
            export LSCOLORS="$2"
        fi
    fi
}
_ext_ascii()
{
    tput as 2> /dev/null
    if [[ $? == 0 ]]; then
        printf "$1"
        tput ae
    fi
}
custom_color()
{
        export "$1"="$2"
        cfg[$2]="$(tput $cap_setfg "$2" "$2" "$2")"
        cbg[$2]="$(tput $cap_setbg "$2" "$2" "$2")"
}
load_colors()
{
        export black=0 red=1 green=2 brown=3 blue=4 magenta=5 cyan=6 white=7 RESET
        RESET="$(printf '\033[0;10m')"
        BOLD="$(tput bold)"
        integer i=0
        while (( i < 8 ))
        do 
                fg[$i]="$(tput $cap_setfg "$i" "$i" "$i")"
                bg[$i]="$(tput $cap_setbg "$i" "$i" "$i")"
                (( i=i+1 ))
        done
}
load_colors
