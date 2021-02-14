#THIS WILL CLONE REPOSITORY TO YOUR USER HOME DIRECTORY, IT ALSO CHECKS IF YOU HAVE KSH AND GIT INSTALLED.
#If it detects your old config it will back it up;
if !  type ksh || type ksh93 || type kshm  
then
    echo "No Korn Shell installed"
    exit 1
fi
if ! type git 
then
    echo "Script needs git to clone repository"
    exit 2
fi
if [ -e ~/.kshrc ] 
then
    mv ~/.kshrc ~/.kshrc_bak
    echo "You have .kshrc in your, home, renaming it to .kshrc_bak, remember to copy your exports etc. to new .kshrc"
fi
if [ -d ~/.korny ]
then
    rm -rf ~/.korny
fi

cd ~
git clone https://github.com/DesantBucie/korny.git .korny && cd .korny

mv .kshrc ~

rm  ~/.korny/scripts/install.ksh
rm -r ~/.korny/.github
