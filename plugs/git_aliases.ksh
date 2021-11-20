alias ggps="git push origin $(_git_branch)"
alias ggpl="git pull origin $(_git_branch)"
alias ggrv="git remote -v "
alias ggaa="git add ."
alias ggco="git commit "
alias ggcm="git commit -m"
alias ggcl="git clone "
alias ggfo="git fetch origin $(_git_branch)"
alias ggmr="git merge"

ghcl() {
    if [[ $2 == "" ]]; then
        git clone https://github.com/"$1"
    else
        git clone https://github.com/"$1"/"$2"
    fi
}
glcl() {
    if [[ $2 == "" ]]; then
        git clone https://gitlab.com/"$1"
    else
        git clone https://gitlab.com/"$1"/"$2"
    fi
}
