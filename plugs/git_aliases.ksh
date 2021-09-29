alias ggps="git push origin $(_git_branch)"
alias ggpl="git pull origin $(_git_branch)"
alias ggrv="git remote -v "
alias ggaa="git add ."
alias ggco="git commit "
alias ggcm="git commit -m"
alias ggcl="git clone "
alias ggfo="git fetch origin $(_git_branch)"

ghcl() {
    git clone https://github.com/$1
}
glcl() {
    git clone https://gitlab.com/$1
}
