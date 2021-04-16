#Currently not used
_git_check_pull()
{
        [[ $(git rev-parse HEAD) = $(git ls-remote $(git rev-parse --abbrev-ref @{u} | \
sed 's/\// /g') | cut -f1) ]] || echo ↓
}
_git_prompt()
{     
        [[ $(git rev-parse --abbrev-ref HEAD 2> /dev/null) ]] \
		&& echo -n $(git rev-parse --abbrev-ref HEAD 2> /dev/null)' '
}
