#THIS WILL CLONE REPOSITORY TO YOUR USER HOME DIRECTORY, IT ALSO CHECKS IF YOU HAVE KSH AND GIT INSTALLED.
#If it detects your old config it will back it up;

! { type ksh || type ksh93; } && echo "No Korn Shell installed" && exit 127

[[ $(ksh --version) == *'u+m'* ]] || echo "Consider using ksh u+m linked in README"

! type git && echo "Script needs git to clone repository" && exit 127

[[ -f ~/.kshrc ]] && mv ~/.kshrc ~/.kshrc_bak && echo "You have .kshrc in your, home, renaming it to .kshrc_bak, remember to copy your exports etc. to new .kshrc"

[[ -d ~/.korny ]] && rm -rf ~/.korny

cd ~
git clone https://github.com/DesantBucie/korny.git .korny && cd .korny && mv .kshrc ~

echo 'Are you using ksh93u+m from MCDutchie?(y/n)'

while :
do
    read ksh_val
    [[ $ksh_val == 'y' || $ksh_val == 'n' || $ksh_val == 'Y' || $ksh_val == 'N' ]] && break || echo '(y/n)'
done
[[ $ksh_val == 'n' || $ksh_val == 'N' ]] && echo 'Go to ~/.korny/plugs/aliases.ksh and comment with # third line'
