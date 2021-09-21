#Currently not used
_git_check_changes()
{
        [[ $(git status --porcelain --untracked-files=no) != '' ]] \
            && echo "*"
}
_git_prompt()
{     
        [[ $(git rev-parse --abbrev-ref HEAD 2> /dev/null) != "" ]] \
		    && echo -n "$(_git_check_changes)$(git rev-parse --abbrev-ref HEAD 2> /dev/null) "
}
