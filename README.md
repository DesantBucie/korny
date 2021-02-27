# korny

ksh-something like plugin or script

![Oh Korny](https://raw.githubusercontent.com/DesantBucie/korny/master/.github/screenshot2.png)

## Requirements

* git (avoid apple crappy one, use brew's or nixes)
* ksh (not ksh clones like OpenBSD's pdksh, compile [this](https://github.com/ksh93/ksh)).

## Installation

Original Kornshell is buggy, you can use it, but better [Compile this fork](https://github.com/ksh93/ksh) or use precompiled versions in [releases](https://github.com/DesantBucie/korny/releases)

Change shell to kornshell:

`which ksh` - output will be path to ksh

make sure that ksh is in `/etc/shells` (it can be named ksh93), if there isn't, enter a path;

`chsh -s <PATH TO KSH>`

Run: `ksh -c "$(curl -fsSL https://raw.githubusercontent.com/DesantBucie/korny/master/scripts/install.ksh)"`

### OPENBSD
 
In OpenBSD you have to change `local` to `typeset` in /etc/ksh.kshrc, use vim or any other editor, and just search.

## Update

Type: `korny_update`

## Uninstall

Type: `korny_uninstall`

## About

If you only used oh-my-zsh for theme and some aliases, like I did, then you
probably find this similar and I hope faster. 

![Really, here should be a photo](https://raw.githubusercontent.com/DesantBucie/korny/master/.github/screenshot3.png)

I integrated my basic theme with git. If you access via ssh, you will get different color.
![ssh](https://raw.githubusercontent.com/DesantBucie/korny/master/.github/screenshot5.png)

## Why should I use it instead of zsh?

I think in most situations it's going to be quicker. For example look at that times i measured.
![Yesyesyes](.github/screenshot4.png)
