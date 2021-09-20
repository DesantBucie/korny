for PLUG in $KORNY_FOLDER/plugs/_* 
do 
    . $PLUG
done
load_plugs(){
for arr in $1
do
    . $KORNY_FOLDER/plugs/$arr.ksh
done
}
load_completion(){
if [[ $KSH_VERSION == *'PD KSH'* ]]; then
    for plug in $1
    do
        . $KORNY_FOLDER/completion/$plug.ksh
    done
fi
}
