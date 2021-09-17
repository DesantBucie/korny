#THIS WILL CLONE REPOSITORY TO YOUR .local/share folder, IT ALSO CHECKS IF YOU HAVE KSH AND GIT INSTALLED.
#If it detects your old config it will back it up;
TARGET_FOLDER="$HOME/.local/share"
KORNY_FOLDER="$HOME/.local/share/korny"

legacy_ksh(){
    echo '3i # . w q' | ed $KORNY_FOLDER/plugs/_aliases.ksh 
}
requirements() {

! { type ksh || type ksh93; } && echo "No Korn Shell installed" && exit 127

[[ $(ksh --version) == *"u+m"* ]] || echo "Consider using ksh u+m linked in README"

! type git && echo "Script needs git to clone repository" && exit 127

}
preinstall(){
[[ -f ~/.kshrc ]] && mv ~/.kshrc ~/.kshrc_bak && echo "You have .kshrc in your, home, renaming it to .kshrc_bak, remember to copy your data to new .kshrc"

[[ -d $TARGET_FOLDER ]] ||  mkdir -p $TARGET_FOLDER

[[ -d $KORNY_FOLDER ]] && rm -rf $KORNY_FOLDER
}
install(){
cd ~
git clone https://github.com/DesantBucie/korny.git $KORNY_FOLDER && cd $KORNY_FOLDER && mv .kshrc ~
cd $KORNY_FOLDER && git switch dev
}
postinstall(){
echo 'Are you using ksh93u+m(downloaded from github)?'

while :
do
    read ksh_val
    [[ $ksh_val == 'y' || $ksh_val == 'n' || $ksh_val == 'Y' || $ksh_val == 'N' ]] && break || echo '(y/n)'
done
[[ $ksh_val == 'n' || $ksh_val == 'N' ]] && legacy_ksh && echo "If something wouldn't work try, commenting 3rd line in ~/.local/share/korny/plugs/_aliases.ksh"
}

requirements
preinstall
install
postinstall
