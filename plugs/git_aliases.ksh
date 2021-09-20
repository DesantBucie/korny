alias ggps="git push origin $(_git_prompt)"
alias ggpl="git pull origin $(_git_prompt)"
alias ggrv="git remote -v "
alias ggaa="git add ."
alias ggco="git commit "
alias ggcm="git commit -m"
alias ggcl="git clone "
alias ggfo="git fetch origin $(_git_prompt)"

ghcl() {
    git clone https://github.com/$1
}
glcl() {
    git clone https://gitlab.com/$1
}
