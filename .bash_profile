export PATH=:~/src/scripts:/usr/local/bin:/usr/bin:~/bin:$PATH

### Kai Things

# Custom prompt with git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="🍀 \[\033[36m\]kaichimp\[\033[0m\]\[\033[32m\] \W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Git autocomplete branch names
source ~/.git-completion.sh
# get the file from: https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# jokes
alias dino="dino.sh"
alias git="git.sh"

# Never ask a man for help again
alias explain="man"
alias splain="man"
alias learn="man"

# Github key
export GithubAccessToken="[redacted]"

# Default public token for riselikethemoon
export MAPBOX_ACCESS_TOKEN="[redacted]"

# Default editor <3
export EDITOR=subl

# change default git editor from command line with:
# $ git config --global --unset-all core.editor # unsets your default git editor
# $ git config --global --add core.editor "subl -n -w" # sets to subl, waits for close
# for a new computer with no gitconfig, try:
# $ git config --global core.editor "subl -n -w"

### Mailchimp Things
source "${HOME}"/.env.*

if [ -f ~/.devtool.env ]; then
    source ~/.devtool.env
fi

alias ssh-add='ssh-add -t 4h'

# Linter aliases
codesniffer_ruleset="~/src/mc-codesniffer-ruleset/MCStandard"
alias phplint="phpcs --standard=${codesniffer_ruleset}"
alias phpfix="phpcbf --standard=${codesniffer_ruleset}"

# [redacted] vpn settings and aliases
