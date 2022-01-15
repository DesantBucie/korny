_git_check_changes()
{
        [[ $(git status --porcelain --untracked-files=no 2> /dev/null) != '' ]] \
            && echo "*" 2> /dev/null
}
_git_branch()
{
        [[ $(git rev-parse --abbrev-ref HEAD 2> /dev/null) != "" ]] \
            && echo -n "$(git rev-parse --abbrev-ref HEAD 2> /dev/null) "
}
_git_prompt()
{     
    echo -n "$(_git_check_changes)$(_git_branch)" 
}
