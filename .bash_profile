export PATH=/usr/local/bin/psql:/usr/local/bin:$HOME/bin:/usr/local/opt/ruby/bin:$PATH:~/scripts

### Kai Things

# Custom prompt with git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="🍀  \[\033[36m\]\h:\u\[\033[0m\]\[\033[32m\] \W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Git autocomplete branch names
source ~/.git-completion.sh
# get the file from: https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

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


### Mapbox Things

# NVM - Node version manager
export NVM_DIR="/Users/kai/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# ECS-Conex, for clearing images
export RegistryId="[redacted]"

# Mapbox CLI commands
source "$(npm root -g)/mbxcli/mapbox.sh"

# AWS configuration
export indexer=production
export SlackUser=@kaibot3000
export GitHubUser=KaiBot3000

# AWS completer
complete -C '/usr/local/bin/aws_completer' aws

# Postgres PGIS
export PGDATA=/usr/local/var/postgres

# Mason - to publish new packages
export MASON_TRAVIS_TOKEN="[redacted]"
