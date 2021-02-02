cd ~/.korny

git pull origin master

if [ -f scripts/install.ksh ]; then
    rm scripts/install.ksh 
fi

if [ -f .kshrc ]; then
    rm .kshrc
fi
