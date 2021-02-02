cd ~/.korny

git stash save
git pull origin master
git stash pop

if [ -f scripts/install.ksh ]; then
    rm scripts/install.ksh 
fi

if [ -f .kshrc ]; then
    rm .kshrc
fi
