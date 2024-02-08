set -A fg bg cfg cbg
_multiline(){
    if [[ $(set -o | grep multiline) = *"multiline"* ]]; then
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
_blink()
{
    printf "\033[5m"
}
custom_color()
{
        export "$1"="$2"
        cfg[$2]="$(printf '\033[38;5;%dm' "$2")"
        cbg[$2]="$(printf '\033[48;5;%dm' "$2")"

}
load_colors()
{
        export black=0 red=1 green=2 brown=3 blue=4 magenta=5 cyan=6 white=7 RESET
        RESET="$(printf '\033[0;10m')"
        BOLD="$(printf '\033[1m')"
        integer i=0
        while (( i < 8 ))
        do 
                fg[$i]="$(printf '\033[3%dm' "$i")"
                bg[$i]="$(printf '\033[4%dm' "$i")"
                (( i=i+1 ))
        done
}
load_colors
