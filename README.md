# korny

ksh-something like plugin or script

## Requirements

* git
* ksh (not ksh clones like OpenBSD, bcs it won't work unfotunately.
More about that in "About" paragraph)

## Installation

Change shell to ksh if installed:

`which ksh` - output will be path to ksh

`chsh -s <PATH TO KSH>`

Run: `ksh -c "$(curl -fsSL https://raw.githubusercontent.com/DesantBucie/korny/master/scripts/install.ksh)"`

## Update

Type: `korny_update`

## Uninstall

Type: `korny_uninstall`

## About

I made this, because I was annoyed using oh-my-zsh, and getting xcodebuild lags,
and because I quite liked pdksh on OpenBSD as I'm using as my server.
Unfortunately ksh clones like OpenBSD will not work as it's different,
from setting variables to sourcing files. I may look into that in the future.

If you only used oh-my-zsh for theme and some aliases, like I did, then you
probably find this similar and I hope faster. This still lacks history search
completion, which I'll try to implement soon.

I integrated my basic theme with git, and mercurial.

