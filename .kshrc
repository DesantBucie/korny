HISTFILE="$HOME/.ksh_history"
HISTSIZE=5000
. ~/.korny/themes/otto_colori.ksh #Theme
for f in ~/.korny/plugs/*; do source $f; done #Plugins
export PATH=$PATH":$HOME/.korny/bin"
