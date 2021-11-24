# korny

Something like plugin manager for kornshell

![Oh Korny](https://raw.github.com/DesantBucie/DesantBucie/master/korny/screenshot2.png)

## Requirements

* git (avoid apple crappy one, install one from nix or brew)
* ksh93 ([Best option](https://github.com/ksh93/ksh)), pdksh or mksh(tested 2020).
* printf built-in to shell, or as external program
* tput(should be built-in as well)

## Tested OSes

* macOS
* SunOS
* FreeBSD and OpenBSD
* Linux should also work

## Installation

1. Change default shell to kornshell(if you have to):

   * `which ksh` - output will be path to ksh

   * Make sure that ksh is in `/etc/shells`, if there isn't, enter full path

   * `chsh -s <PATH TO KSH>`

2. Run: `ksh -c "$(curl -fsSL https://raw.githubusercontent.com/DesantBucie/korny/master/bin/install.ksh)"`

3. Only ksh93u+m supports autocd, so note that.

4. Some systems may require setting `export ENV=$HOME/.kshrc` in ~/.profile or /etc/profile(don't forget to reboot).

Also mksh use .mkshrc, so you either rename .kshrc to .mkshrc, or use step above

## Change prompt

Change line named `PROMPT` in ~/`.kshrc` to filename without extension i.e ibsd

![alt](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/prompt.png)

## Load plugins

By default you will load `git_aliases` and `android` plugins(plus base plugins starting with. `_`).

To add plugin, just edit `~/.kshrc`, type it's filename

```bash
set -A plugins_array -- \
android git_aliases #Load plugins
load_plugs 
```

## Load completion

Completion works only in OpenBSD KSH, it is forked from [ohmyksh](https://github.com/qbit/ohmyksh)

You load it the same way as plugins, in `~/.kshrc` but istead of `plugins-array` load it in `completion_array` just below

Note that not all completions are crossplatform(i.e openbsd)

## Update

Type: `korn u` or `korn update`

## Uninstall

Type: `korn rm` or `korn remove`

## About

If you only used ohmyzsh for theme and aliases, like I did, then you probably find this similar and faster. 

![I hate alt text](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/screenshot3.png)

I integrated my basic theme with git. If you access via ssh, you will get different color.

![ssh](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/screenshot5.png)

## Why should I use it instead of zsh?

I think in most situations it's going to be quicker. For example look at that times i measured.

![Yesyesyes](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/screenshot4.png)

And it's definetly quicker than bash, and you shouldn't see many differences in terms of everyday using.

