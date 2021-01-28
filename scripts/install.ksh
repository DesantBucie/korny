if [!-x ksh] then;
    echo "No Korn Shell installed"
    exit 1
fi
if [-e ~/.kshrc] then;
    mv ~/.kshrc ~/.kshrc_bak
    echo "You have .kshrc in your, home, renaming it to .kshrc_bak, remember to copy your exports etc. to new .kshrc"
fi
mv .kshrc ~/
mv ./korny ~/.korny

