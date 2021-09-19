# Create your own prompt

There might be a situation, where your terminal theme does not fit to prompt. 
Don't worry as **creating your own is easy**

## Start

Good start will be by copying one of prompts located at `~/.korny/prompts/` and giving it your name. Now you can see, that whole prompt sits in one variable: PS1.

## Good to know

Statements inside `[[..]]` followed by either `&&` or `||` are effectively if statements.
if `[[..]]` is true then command following `&&` will fire. If `[[..]]` is false, then command following `||` will be fired. This if technique might be strange, so you can use normal ifs.

$RESET are variables

${sth[]} are arrays

$() are funcition calls or programs calls, you can find those functions in plugs directory. 

## Creating prompt

Think about layout of your prompt. I'm going to use simple: USER DIRECTORY GIT=>

To print user we can use `whoami` program. 

To print current directory we can use `_print_short_pwd` function that we can find in plugs directory.

The same goes for git, we can use `_git_prompt` function.

**Let's begin**

```bash
PS1='$(whoami)$(_print_short_pwd)$(_git_prompt)-> '

```
Note that i'm using `''` not `""`

To have space between, just make space. Some funtions like `_git_prompt` will print space, when they will print themselves.
```bash
PS1='$(whoami) $(_print_short_pwd)$(_git_prompt)-> '
```

Unfortunately if you don't want it, the only thing you can do is copy it to your prompt file, give it different name and execute it.

```bash
_custom_git_prompt()
{    #    v===========     remeber about spaces      ==========v 
        [[ $(git rev-parse --abbrev-ref HEAD 2> /dev/null) !='' ]] \
		&& print -n $(git rev-parse --abbrev-ref HEAD 2> /dev/null) #deleted space at the end
}

PS1='$(whoami) $(_print_short_pwd)$(_git_prompt)-> '
```

Now let's say we want to color our prompt. Let's split our prompt a little, so it's easier to read.
Note that in order to concat PS1, I have to copy it's name.

This is equivalent to statement `i=i+1` (PS1="PS1"'content')

```bash
    PS1='${bg[red]}$(whoami)$RESET ' # space at the end
    PS1="$PS1"'$(_print_short_pwd)$(_git_prompt)-> '
```

We use `${fg[colorname]}` to assign color of character, and `${bg[colorname]}` to assign background color. We have only 8 colors to our disposal:`black red green brown blue magenta cyan`(could differ from their names. Sometime brown is yellow etc.);

We need to use `$RESET` to stop coloring. Otherwise coloring will never stop, and whole terminal will be painted.

If you want more colors, that's not a problem. You can use `custom_color` function to have 256 of them. Just to be clear, don't load 256, as this will take ages(tried that). Pick how many you need and name them as you wish. I.e.

Lookup [all 256 colors here:](https://jonasjacek.github.io/colors/)

```bash
    custom_color c_red 196
    PS1='${bg[red]}$(whoami)$RESET '
    PS1="$PS1"'$(_print_short_pwd)${cfg[c_red]}$(_git_prompt)$RESET-> '
```
To use it use `${cfg[color_name_you_defined]}`. The same goes for background(`${cbg[]}`).
To stop coloring we use `$RESET`. 

Just to be sure, in this case `${cfg[c_red]}` != `${fg[red]}` as these are two different colors (1 vs 196)

## Other things to say

If you thinking about yourself only, then this is not the chapter for you. But if you want to make cross-compatible prompt you have to watch out.

Some of the programs like `whoami` might not be installed on someone's computer. That was the case in SunOS, where i just aliased printing LOGNAME to `whoami`.

Also not all systems support 256 terminal colors, so you can use basic 8. Some terminals support even RGB, but there is no support for them in korny, so you would have to code it yourself.

## So, Good luck, remember to look on shipped prompts.
