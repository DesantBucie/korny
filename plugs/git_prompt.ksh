_git_prompt()
{
    git rev-parse --abbrev-ref HEAD 2> /dev/null
}
