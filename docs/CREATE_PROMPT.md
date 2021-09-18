# Create your own prompt

There might be a situation, where your terminal theme does not fit to prompt. 
Don't worry as **creating your own is extremely easy**

## Start

Good start will be by copying one of prompts located at `~/.korny/prompts/` and giving it your name. Now you can see, that whole prompt sits in one variable: .sh.value in PS1.get function.

## Good to know

Statements inside `[[..]]` followed by either `&&` or `||` are effectively if statements.
if `[[..]]` is true then command following `&&` will fire. If `[[..]]` is false, then command following `||` will be fired. This if technique might be strange, so you can use normal ifs. You can also look for logic in comments in `otto_colori.ksh`

If you assign letter to .sh.value it will be printed as normal letter. Hovever you cannot use some special signs. If you want to use it in prompt use right slash before it i.e. `\>` `\$`

${} are variables, or arrays

$() are funcition calls or programs calls, usually you can find those functions in plugs directory. 

## Creating prompt

Think about layout of your prompt. I'm going to use simple: USER DIRECTORY GIT=>

To print user we can use for example `whoami` program. 

To print current directory we can use `_print_short_pwd` function that we can find in plugs directory.

The same goes for git, we can use `_git_prompt` function.

**Let's begin**

```ksh
PS1.get() {
    .sh.value="$(whoami)$(_print_short_pwd)$(_git_prompt)\=\>"
}
```

At the end, we need backslashes to tell that we want character not operation. One more thing to notice is, some functions, already print space between themselves. Some don't. If you need space, just add backslash and space. 

```ksh
PS1.get() {
    .sh.value="$(whoami)\ $(_print_short_pwd)$(_git_prompt)\=\>"
}
```

Unfortunately for now if some function does print space and you don't want it, the only thing you can do is copy it to your prompt file out of PS1.get funtion, give it different name and execute it.

```ksh
_custom_git_prompt()
{     
        [[ $(git rev-parse --abbrev-ref HEAD 2> /dev/null) ]] \
		&& print -n $(git rev-parse --abbrev-ref HEAD 2> /dev/null) #deleted space at the end
}


PS1.get() {
    .sh.value="$(whoami)\ $(_print_short_pwd)$(_custom_git_prompt)\=\>"
}
```

Now let's say we want to color our prompt. Let's split our prompt a little, so it's easier to read.

```ksh
PS1.get() {
    .sh.value="${bg[red]}$(whoami)${bg[reset]}\ " # space at the end
    .sh.value+="$(_print_short_pwd)$(_git_prompt)\=\>"
}
```

We use `${fg[colorname]}` to assign color of character, and `${bg[colorname]}` to assign background color. We have only 8 colors to our disposal:`black red green brown blue magenta cyan`(could differ from their names. Sometime brown is yellow etc.);

We need to use `${fg[reset]}` to stop coloring. Otherwise coloring will never stop, and whole terminal will be painted. Remember that `${fg[reset]}` == `${bg[reset]}` so you don't have to use both of them.

If you want more colors, that's not a problem. You can use `custom_color` function to have 256 of them. Just to be clear, don't load 256, as this will take ages(tried that). Pick how many you need and name them as you wish. I.e.

Lookup all 256 colors [here:](https://jonasjacek.github.io/colors/)

```
PS1.get() {
    custom_color red 196
    .sh.value="${bg[red]}$(whoami)${bg[reset]}\ "
    .sh.value+="$(_print_short_pwd)${cfg[red]}$(_git_prompt)${fg[reset]}\=\>"
}
```
To use it use `${cfg[color_name_you_defined]}`. The same goes for background(`${cbg[]}`).
To stop coloring we use normal `${fg[reset]}`. 

Just to be sure, in this case `${cfg[red]}` != `${fg[red]}` as these are two different colors (1 vs 196)

## Other things to say

If you thinking about yourself only, then this is not the chapter for you. But if you want to make cross-compatible prompt you have to watch out.

Some of the programs like `whoami` might not be installed on someone's computer. That was the case in SunOS, where i just aliased printing LOGNAME to `whoami`.

Also not all systems support 256 terminal colors, so you can use basic 8. Some terminals support even RGB, but there is no support for them in korny, so you would have to code it yourself.

## So, Good luck, remember to look on working prompts.
