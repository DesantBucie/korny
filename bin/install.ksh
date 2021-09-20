#THIS WILL CLONE REPOSITORY TO YOUR .local/share folder, IT ALSO CHECKS IF YOU HAVE KSH AND GIT INSTALLED.
#If it detects your old config it will back it up;
TARGET_FOLDER="$HOME/.local/share"
KORNY_FOLDER="$TARGET_FOLDER/korny"
GIT_VERS="$(git --version)"
GIT_REQU="2.19"

read_val(){
while :
do
    read value
    [[ $value == 'y' || $value == 'n' || $value == 'Y' || $value == 'N' ]] && break || echo '(y/n)'
done
}
requirements() {
! { type ksh || type ksh93; } && echo "No Korn Shell installed" && exit 127
! type sed && echo "No sed installed" && exit 127
! type git && echo "Script needs git to clone repository" && exit 127
! type printf && echo "Printf is needed" && exit 127
}
preinstall() {
[[ -f ~/.kshrc ]] && mv ~/.kshrc ~/.kshrc_bak && echo "You have .kshrc in your, home, renaming it to .kshrc_bak, remember to copy your data to new .kshrc"

[[ -d $KORNY_FOLDER ]] && rm -rf $KORNY_FOLDER/* && rm -rf $KORNY_FOLDER/.* || mkdir  -p $KORNY_FOLDER
}
install() {
cd $TARGET_FOLDER
if [[ "$(printf '%s\n' "$GIT_REQU" "$GIT_VERS" | sort -V | sed 1q)" == "$GIT_REQU" ]]; then
    git clone --filter=blob:none --sparse https://github.com/DesantBucie/korny
    git switch dev
    git sparse-checkout add plugs/ bin/korny* prompts/
    echo "Do you want documentation?"
    answer=$(read_val)
    [[ $answer == 'Y' || $answer == 'y' ]] && git sparse-checkout add docs/
    echo "Do you use OpenBSD ksh and want completion?"
    answer2=$(read_val)
    [[ $answer2 == 'Y' || $answer2 == 'y' ]] && git sparse-checkout add completion/
else
    echo "Partial cloning not supported, consider updating git next time"
    git clone https://github.com/DesantBucie/korny
fi
}
postinstall() {
echo "If something wouldn't work, check docs/TROUBLESHOOTING.md, if you don't find your answer don't be afraid to make github issue" 
}

requirements
preinstall
install
postinstall
