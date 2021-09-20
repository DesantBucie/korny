#### Error in no such option as --nobackslash or error ...autocd.ksh 

Unload ksh93 from plugins in ~/.kshrc

#### Stop line wrapping in oksh and mksh, emacs mode(default)

The only thing you can do is to put `set +o emacs` on the bottom of `~/.kshrc`. 
Note that this will mean vi mode will be default, and completely different bindings will need to be used

#### Using ksh93u+m on OpenBSD

You have to change `local` to `typeset` in /etc/ksh.kshrc, use vim or any other editor, and just search.

![O-BSD](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/screenshot6.png)

