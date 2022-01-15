# korny

Something like plugin manager for kornshell

![Oh Korny](https://raw.github.com/DesantBucie/DesantBucie/master/korny/screenshot2.png)

## Requirements

* git (avoid apple crappy one, install one from nix or brew[^1])
* ksh93 ([Best option](https://github.com/ksh93/ksh)), pdksh or mksh(with limitations[^2]).
* printf built-in to shell, or as external program
* tput(should be built-in as well[^3])

## Tested OSes

* macOS
* SunOS
* FreeBSD and OpenBSD
* Linux should also work
* even Android

## Installation

1. Change default shell to kornshell(if you have to):

   * `which ksh` - output will be path to ksh

   * Make sure that ksh is in `/etc/shells`, if there isn't, enter full path

   * `chsh -s <PATH TO KSH>`

2. Run: `ksh -c "$(curl -fsSL https://raw.githubusercontent.com/DesantBucie/korny/master/bin/install.ksh)"`

3. Only [ksh93u+m](https://github.com/ksh93/ksh) supports autocd, so note that.

4. Some systems may require setting `export ENV=$HOME/.kshrc`[^4] in ~/.profile or /etc/profile(don't forget to reboot).

Also mksh use .mkshrc, so you either rename .kshrc to .mkshrc, or use step above

## Change prompt

Change line named `PROMPT` in ~/`.kshrc` to filename without extension i.e ibsd

![alt](https://raw.githubusercontent.com/DesantBucie/DesantBucie/master/korny/prompt.png)

## Load plugins

By default you will load `git_aliases` and `android` plugins(plus base plugins starting with. `_`).
Plugins with __.ksh93__, are for ksh93 only.
To add plugin, just edit `~/.kshrc`, enter it's filename

```bash
set -A plugins_array -- \
android git_aliases #Load plugins
load_plugs 
```

To see all plugins, check plugin folder.

## Load completion

Completion works only in oksh, it is forked from [ohmyksh](https://github.com/qbit/ohmyksh)

You load it the same way as plugins, in `~/.kshrc` but istead of `plugins-array` load it in `completion_array` just below

Note that not all completions are crossplatform(i.e openbsd)

## Update

Type: `korn u` or `korn update`

## Uninstall

Type: `korn rm` or `korn remove`

[^1]: [This is why.](https://github.com/DesantBucie/korny/issues/17)

[^2]: As I tested it on NetBSD, there were problems with prompt loading if there were too many lines in PS1 variable. It cannot be fixed from this level most likely. 

[^3]: If it's not,(like on termux on android) try installing `coreutils`.

[^4]: You can set any path(and copy .kshrc there), for example i have it under `export ENV="$HOME/.config/ksh/rc"`
