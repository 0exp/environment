export ZSH=/Users/DaiveR/.oh-my-zsh
ZSH_THEME="spaceship"
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
plugins=(sublime osx brew docker)
source $ZSH/oh-my-zsh.sh

# register SSH credentials
ssh-add -K ~/.ssh/id_rsa > /dev/null 2>&1

# git aliases
alias gbd="git branch -D"
alias gbl="git branch -l"
alias gbr="git branch -r"
alias gba="git branch -a"
alias gbm="git branch -m"
alias gblr="git for-each-ref --sort=-committerdate refs/remotes/ --format=\"%(objectname:short) (%(committerdate:short)) [%(authorname)] %(refname:short)\""
alias gbll="git for-each-ref --sort=-committerdate refs/heads/ --format=\"%(objectname:short) (%(committerdate:short)) [%(authorname)] %(refname:short)\""
alias gct="git commit"
alias gmrg="git merge"
alias gcm="git commit -m"
alias gca="git add -A && git commit -m"
alias gco="git checkout"
alias gcb="git checkout -b"
alias grb="git rebase"
alias grbm="git rebase master"
alias gcl="git clone --recursive"
alias gst="git status"
alias gdfc="git diff --cached"
alias gdf="git diff"
alias gaa="git add ."
alias gad="git add"
alias gswipe="git reset --soft HEAD^"
alias grs="git reset HEAD"
alias gpl="git pull origin"
alias gpsho="git push origin"
alias gpsh="git push"
alias gpsht="git push --tags"
alias glg="git log --graph --date=short --pretty=format:\"%C(yellow)%h%C(reset) (%C(cyan)%ad%C(reset)) [%C(green)%an%C(reset)] %C(white)%s%C(reset)\""
alias glgp="git log -p"
alias grm="git rm"
alias grv="git remote -v"
alias gtl="git tags -l"
alias gconfed="st ~/.gitconfig"
alias ggnored="st ~/.gitignore"
alias gdfstat="git diff --stat master"
alias glas="git config --get-regexp alias"
alias gitmans="git shortlog --summary --numbered"

# initialize rbenv (ruby version manager)
eval "$(rbenv init -)"
alias rbenv-upgrade="brew upgrade rbenv ruby-build"

# bundler aliases
alias be="bundle exec"
alias bi="bundle install"
alias bircop="bundle exec rubocop"
alias bircopp="bundle exec rubocop --parallel"
alias bircopa="bundle exec rubocop -a \$(git diff master --name-only --diff-filter=AMCRU | grep -E \".*\.rb\")"
alias birspec="bundle exec rspec"
alias brake="bundle exec rake"

# zsh aliases
alias zshreload="source ~/.zshrc"
alias zshedit="st ~/.zshrc"
alias zshupdate="upgrade_oh_my_zsh"

# initialize NVM (nodejs version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# initialize kiex (elixir version manager)
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

# initializ TravisCI cli tool
[ -f /Users/DaiveR/.travis/travis.sh ] && source /Users/DaiveR/.travis/travis.sh

# register global editor
export EDITOR="/usr/bin/vim"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Corrects errors in previous console command
eval $(thefuck --alias)

# ZSH spaceship prompt settings
SPACESHIP_PROMPT_ORDER=(
  time
  user
  host
  dir
  git
  exec_time
  line_sep
  jobs
  exit_code
  char
)
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_PROMPT_PREFIXES_SHOW=true
SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_TIME_SHOW=false
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_SUFFIX=" => "
SPACESHIP_USER_COLOR=green
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_SUFFIX=" "
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_SYMBOL=" "
SPACESHIP_GIT_BRANCH_SHOW=true
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_RUBY_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_EXIT_CODE_SHOW=false
SPACESHIP_CHAR_SYMBOL="➜ "
