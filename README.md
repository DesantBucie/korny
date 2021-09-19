# korny

Something like plugin manager for kornshell

![Oh Korny](https://raw.github.com/DesantBucie/DesantBucie/master/korny/screenshot2.png)

## Announcments

New korny will be installed in ~/local/share, bcs of .folders clutter in home directory. Users using old .kshrc, won't be affected, as .kshrc isn't updated, yet they will get all the updates

New korny also supports mksh and pdksh.

## Requirements

* git (avoid apple crappy one, install one from nix or brew)
* ksh93 ([Best option](https://github.com/ksh93/ksh)), pdksh or mksh(tested 2020).

## Tested OSes

* macOS
* SunOS
* FreeBSD and OpenBSD
* Linux should also work

## Installation

1. Change default shell to kornshell(if you have to):

1.1 `which ksh` - output will be path to ksh

1.2 Make sure that ksh is in `/etc/shells`, if there isn't, enter full path

1.3 `chsh -s <PATH TO KSH>`

2. Run: `ksh -c "$(curl -fsSL https://raw.githubusercontent.com/DesantBucie/korny/master/bin/install.ksh)"`

3. Only ksh93u+m supports autocd, so note that.

4. Some systems may require setting `export ENV=$HOME/.kshrc` in ~/.profile or /etc/profile(don't forget to reboot).

Also mksh use .mkshrc, so you either rename .kshrc to .mkshrc, or use step above

## Change prompt

Change 3rd line named `PROMPT` in ~/`.kshrc` to filename without extension i.e ibsd

![alt](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/prompt.png)

## Load plugins

By default you will load `aliases`, `git_aliases` and `android` plugins.

You have to enter filenames of plugins w/o extensions in `~/.kshrc`, for example

```bash
#...
#load_array is array, next are plugin names, this is ksh88 syntax
set -A load_array android git_aliases aliases 
for arr in ${load_array[@]}
do
    . $KORNY_FOLDER/plugs/$arr.ksh
done
#...
```

## Update

Type: `korny_update`

## Uninstall

Type: `korny_uninstall`

## About

If you only used ohmyzsh for theme and aliases, like I did, then you probably find this similar and faster. 

![I hate alt text](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/screenshot3.png)

I integrated my basic theme with git. If you access via ssh, you will get different color.

![ssh](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/screenshot5.png)

## Why should I use it instead of zsh?

I think in most situations it's going to be quicker. For example look at that times i measured.

![Yesyesyes](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/screenshot4.png)

And it's definetly quicker than bash, and you shouldn't see many differences in terms of everyday using.

