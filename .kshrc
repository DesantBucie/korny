VER=2
export KORNY_FOLDER="$HOME/.local/share/korny"
HISTFILE="$HOME/.sh_history"
HISTSIZE=5000
#Here you change the prompt
PROMPT=otto_colori

#This loads all of plugins in plugs folder.
#If you want only minimal setup, uncomment line below, and comment the one below it, necessary files start with '_'
#for PLUS in $$KORNY_FOLDER/plugs/_*
for PLUG in $KORNY_FOLDER/plugs/*
do 
    . $PLUG
done

#If you want to load minimal + specific plugin you can do something like this
#. $FOLDER/plugs/specific_plugin.ksh

. $KORNY_FOLDER/prompts/$PROMPT.ksh
export PATH=$PATH":$KORNY_FOLDER/bin"
