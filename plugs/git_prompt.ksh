_git_check_pull()
{
    [ $(git rev-parse HEAD) = $(git ls-remote $(git rev-parse --abbrev-ref @{u} | \
sed 's/\// /g') | cut -f1) ]|| echo ↓
}
_git_prompt()
{     
    if output=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
        echo $(git rev-parse --abbrev-ref HEAD)' ' #space at the end
    fi
}