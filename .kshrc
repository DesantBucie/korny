HISTFILE="$HOME/.sh_history"
HISTSIZE=5000
PROMPT=otto_colori

. ~/.korny/prompts/$PROMPT.ksh

for PLUG in ~/.korny/plugs/*
do 
    . $PLUG
done

export PATH=$PATH":$HOME/.korny/bin"
