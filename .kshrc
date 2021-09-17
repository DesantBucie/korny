HISTFILE="$HOME/.sh_history"
HISTSIZE=5000
#Here you change the prompt
PROMPT=otto_colori

#This loads all of plugins in plugs folder.
#If you want only minimal setup, uncomment line below, and comment the one below it, necessary files start with '_'
#for PLUS in ~/.korny/plugs/_*
for PLUG in ~/.korny/plugs/*
do 
    . $PLUG
done

#If you want to load minimal + specific plugin you can do something like this
#. ~/.korny/plugs/specific_plugin.ksh

. ~/.korny/prompts/$PROMPT.ksh
export PATH=$PATH":$HOME/.korny/bin"
