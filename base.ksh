for PLUG in "$KORNY_FOLDER"/plugs/_*
do 
    . "$PLUG"
done
load_plugs(){
for arr in "${plugins_array[@]}"
do
    . "$KORNY_FOLDER/plugs/$arr.ksh"
done
}
load_completion(){
if [[ $KSH_VERSION == *'PD KSH'* ]]; then
    for complete in "${completion_array[@]}"
    do
        . "$KORNY_FOLDER/completion/$complete.ksh*"
    done
fi
}
