This file has list of functions and variables built in korny, to use when creating shell or plugin.

## \_git\_prompt.ksh

* **\_git\_branch** - prints current _git_branch
* **\_git\_check_changes** - checks if there are changes to repository.
* **\_git\_prompt** - Both of the above functions combined, used for prompts(not in broadchurch)

## \_colors\_prompt.ksh

* **multiline** - function for disabling multiline for two or more line prompts.
* **\_ls\_colors** - setting colors for ls command. It takes either 0 or 2 arguments. Pass two arguments and it will use them as custom ls colors. Those arguments need to be in specific format.
* **\_blink** - after that characters will blink until $RESET
* **custom\_color** - function for defining one of custom_colors(from 8 up to number 255). Google 255 shell colours to see their look.
Run by `custom_color light_brown 94` Access by `${cfg[light_brown]}` and `${cfb[light_brown]}`
* **load_colors** - function used only on startup, should not be used. Access colors by `${fg[black]}` and ${bg[black]}
* **$RESET** - Resetting coloring, text bolding etc. Use every time, you want to stop some effect.
* **$BOLD** - Used for starting text bold

## \_pwd\_prompt.ksh

* **\_print\_short\_pwd** - function for printing current firectory
* **\_print\_pwd** - function for printing full current full path

