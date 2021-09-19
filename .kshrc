export KORNY_VER=2
export KORNY_FOLDER="$HOME/.local/share/korny"
#Here you change the prompt
PROMPT=otto_colori
HISTFILE="$HOME/.sh_history"
HISTSIZE=5000

#for PLUS in $$KORNY_FOLDER/plugs/* #This would load all the plugins, and... 
for PLUG in $KORNY_FOLDER/plugs/_* #you could then comment this line, and 14-18 line
do 
    . $PLUG
done

set -A load_array android git_aliases
for arr in ${load_array[@]}
do
    . $KORNY_FOLDER/plugs/$arr.ksh
done

. $KORNY_FOLDER/prompts/$PROMPT.ksh
export PATH=$PATH":$KORNY_FOLDER/bin"
