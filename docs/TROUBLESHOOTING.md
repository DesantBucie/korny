#### Error in \_aliases.ksh, no such option as --nobackslash

Just comment 3rd line in \_aliases.ksh, this is specific ksh93u+m option

#### Error ...autocd.ksh 

Just comment 6th line, autocd works only with ksh93u+m

#### Using ksh93u+m on OpenBSD

You have to change `local` to `typeset` in /etc/ksh.kshrc, use vim or any other editor, and just search.

![O-BSD](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/screenshot6.png)

