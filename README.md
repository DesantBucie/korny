# korny

ksh-something like plugin or script

![Oh Korny](https://raw.githubusercontent.com/DesantBucie/korny/master/.github/screenshot2.png)

## Requirements

* git
* ksh (not ksh clones like OpenBSD's pdksh, you can compile [this](https://github.com/ksh93/ksh), and it'll work, read more in OPENBSD.md).

## Installation

Change shell to ksh if installed:

`which ksh` - output will be path to ksh

make sure that ksh is in /etc/shells (it can be named ksh93), if there isn't, enter a path;

`chsh -s <PATH TO KSH>`

Run: `ksh -c "$(curl -fsSL https://raw.githubusercontent.com/DesantBucie/korny/master/scripts/install.ksh)"`

## Update

Type: `korny_update`

## Uninstall

Type: `korny_uninstall`

## About

If you only used oh-my-zsh for theme and some aliases, like I did, then you
probably find this similar and I hope faster. This still lacks history search
completion, which I'll try to implement soon.

![Really, here should be a photo](https://raw.githubusercontent.com/DesantBucie/korny/master/.github/screenshot3.png)

I integrated my basic theme with git, and mercurial. But it's really crassy idea, as it just execs `git branch --show-current` every time you switch directory, and if it returns error, it goes to /dev/null. Not a very sophisticated idea.

## Why should I use it instead of zsh?

I think in most situations it's going to be quicker. For example look at that times i measured.
![Yesyesyes](.github/screenshot4.png)
