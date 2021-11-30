export KORNY_VER=2
export KORNY_FOLDER="$HOME/.local/share/korny"
export TERM="xterm-256color"
#Here you change the prompt
PROMPT=otto_colori
HISTFILE="$HOME/.sh_history"
HISTSIZE=5000
. "$KORNY_FOLDER/base.ksh"

set -A plugins_array -- \
android git_aliases #Load plugins by filename
load_plugs 

#set -A completion_array -- \
#git man ssh #Type completion file names here
#load_completion 

. "$KORNY_FOLDER"/prompts/"$PROMPT".ksh
export PATH="$PATH:$KORNY_FOLDER/bin"

