export PATH="$COMMON_CONFIG_DIR/git-scripts:$PATH"

alias gbrl="git branch --sort=-committerdate"
alias g="git"
alias gcl="git clone"
alias gco="git checkout"
alias gcm="git commit"
alias gpl="git pull"
alias gdf="git difftool --tool=vimdiff"
alias gmtl="git mergetool"
alias glg="git log"
alias glgg="git log --graph --oneline"
alias glgf="git log --graph --oneline -p --full-diff"
alias gst="git status"
alias gdiff="git-cola"
git config --global alias.cob '!f() { git checkout -b "$1"; }; f'
git config --global alias.cbp '!f() { git checkout -b "$1" && git push --set-upstream origin "$1"; }; f'
git config --global alias.ac '!f() { git add -A && git commit -m "$1"; }; f'
git config --global alias.acp '!f() { git add -A && git commit -m "$1" && git push; }; f'
git config --global alias.cp '!f() { git commit -m "$1" && git push; }; f'
# git add, commit and push
alias gcob="git cob"
alias gcbp="git cbp"
alias gac="git ac"
alias gacp="git acp"
alias gcp="git cp"
alias gadd="git add ."
alias gmc="git merge --continue"
alias gmcp="git merge --continue && git push"
alias gmab="git merge --abort"
alias gpsu="gp --set-upstream origin"
alias grsh="git reset --hard && git clean -fd"
alias grstg="git restore --staged ."
alias gstl="git stash list"
alias gstc="git stash clear"
alias gsta="git stash apply"
alias gstp="git stash push"
alias gstpp="git stash pop"
alias gun="git update-index --assume-unchanged"
alias gno="git update-index --no-assume-unchanged"

git config --global alias.ignored '!f() { git ls-files -v | grep "^[[:lower:]]"; }; f'
alias gin="git ignored"

function gmp() { git merge "$1" && git push; }
compdef _git gmp=git-branch

function gcop() { git checkout "$1" && git pull; }
compdef _git gcop=git-branch

function gbd() { git branch -D "$1" && git push -d origin "$1"; }
compdef _git gbd=git-branch

function gcrp() { git cherry-pick "$@" }
compdef _git gcrp=git-cherry-pick
