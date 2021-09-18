#!/usr/bin/env ksh
#THIS WILL CLONE REPOSITORY TO YOUR .local/share folder, IT ALSO CHECKS IF YOU HAVE KSH AND GIT INSTALLED.
#If it detects your old config it will back it up;
TARGET_FOLDER="$HOME/.local/share"
KORNY_FOLDER="$TARGET_FOLDER/korny"
GIT_VERS="$(git --version)"
GIT_REQU="2.19"

legacy_ksh(){
    echo '3i # . w q' | ed $KORNY_FOLDER/plugs/_aliases.ksh 
}
read_val(){
while :
do
    read value
    [[ $value == 'y' || $value == 'n' || $value == 'Y' || $value == 'N' ]] && break || echo '(y/n)'
done
}
requirements() {
! { type ksh || type ksh93; } && echo "No Korn Shell installed" && exit 127
! type ed && echo "No ed installed" && exit 127
! type sed && echo "No sed installed" && exit 127
! type git && echo "Script needs git to clone repository" && exit 127
}
preinstall() {
[[ -f ~/.kshrc ]] && mv ~/.kshrc ~/.kshrc_bak && echo "You have .kshrc in your, home, renaming it to .kshrc_bak, remember to copy your data to new .kshrc"

[[ -d $KORNY_FOLDER ]] && rm -rf $KORNY_FOLDER/* && rm -rf $KORNY_FOLDER/.* || mkdir  -p $KORNY_FOLDER
}
install() {
cd $TARGET_FOLDER
if [[ "$(printf '%s\n' "$GIT_REQU" "$GIT_VERS" | sort -V | sed 1q)" == "$GIT_REQU" ]]; then
    git clone --filter=blob:none --sparse https://github.com/DesantBucie/korny
    git sparse-checkout add plugs/ bin/ prompts/
    echo "Do you want documentation?"
    answer=$(read_val)
    [[ $answer == 'Y' || $answer == 'y' ]] && git sparse-checkout add docs/
else
    echo "Partial cloning not supported, consider updating git next time"
    git clone https://github.com/DesantBucie/korny
fi
}
postinstall() {
echo 'Are you using ksh93u+m(downloaded from github)?'

ksh_val=$(read_val)
[[ $ksh_val == 'n' || $ksh_val == 'N' ]] && legacy_ksh && echo "If something wouldn't work, try commenting 3rd line in $KORNY_FOLDER/plugs/_aliases.ksh"
}

requirements
preinstall
install
postinstall
