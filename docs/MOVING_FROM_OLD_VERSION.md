### To move to newer, little bit cleaner, and working on all ksh's
You got to choose. Stay in ~/.korny, or move to ~/.local/share/korny. Technically you can move, wherever you want, but this two locations are optimal.

So. Let's start. copy new .kshrc from ~/.korny/.kshrc to your $HOME directory(BACKUP YOUR PERSONAL ADDITIONS).

Before you run new session edit now new ~/.kshrc

Assign .korny folder location to KORNY_FOLDER variable in .kshrc

The new change is that korny will load only bare minimal. To load plugins, that intrest you choose their filenames, and enter them as it's shown in README.md

If you are using openBSD ksh, you can use completion, and load it the same as, plugins, but in array below them. Look up in README.md to be sure

Sorry for hard transition, i don't want to build .kshrc system update, as it often contains user personal additions, which could lead to destructing them. I hope, this is .kshrc final version.
