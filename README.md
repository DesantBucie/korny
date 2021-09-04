# korny

Something like plugin for kornshell

![Oh Korny](.github/screenshot2.png)

## Requirements

* git (avoid apple crappy one, use brew's or nix's)
* ksh93 ([Best option](https://github.com/ksh93/ksh), pdksh or mksh won't work).

## Tested OSes

* macOS
* SunOS
* FreeBSD and OpenBSD
* Should also work for linux

![](.github/korny.png)

## Installation

Original Kornshell is buggy, you can compile one above or use precompiled versions in [releases](https://github.com/DesantBucie/korny/releases)

1. Change default shell to kornshell:<br/>
`which ksh` - output will be path to ksh<br/>
Make sure that ksh is in `/etc/shells` (it can be named ksh93), if there isn't, enter a path<br/>
`chsh -s <PATH TO KSH>`

2. Run: `ksh -c "$(curl -fsSL https://raw.githubusercontent.com/DesantBucie/korny/master/bin/install.ksh)"`

3. If you are not using the version above, then you will be told to comment 3rd line in ~/.korny/aliases.ksh, and autocd won't work.

#### OpenBSD
 
In OpenBSD you have to change `local` to `typeset` in /etc/ksh.kshrc, use vim or any other editor, and just search.

![O-BSD](.github/screenshot6.png)

You also need to set `export ENV=$HOME/.kshrc` in ~/.profile or /etc/profile

#### FreeBSD

Set `export ENV=$HOME/.kshrc` in ~/.profile or /etc/profile

## Change prompt

Change 3rd line named `PROMPT` in `.kshrc` to filename without extension i.e ibsd

![alt](.github/prompt.png)

## Update

Type: `korny_update`

## Uninstall

Type: `korny_uninstall`

## About

If you only used ohmyzsh for theme and aliases, like I did, then you
probably find this similar and maybe faster. 

![I hate alt text](.github/screenshot3.png)

I integrated my basic theme with git. If you access via ssh, you will get different color.

![ssh](.github/screenshot5.png)

## Why should I use it instead of zsh?

I think in most situations it's going to be quicker. For example look at that times i measured.

![Yesyesyes](.github/screenshot4.png)

And it's definetly quicker than bash, and you shouldn't see many differences in terms of everyday using.

![HelloSystem](.github/screenshot7.png)
![ADB](.github/adb.png)
