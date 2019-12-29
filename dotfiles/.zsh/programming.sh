alias solardoc="solargraph bundle"

alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias bo="EDITOR=subl bundle open"
alias bircop="bundle exec rubocop"
alias bircopp="bundle exec rubocop --parallel"
alias bircopa="bundle exec rubocop -a \$(git diff master --name-only --diff-filter=AMCRU | grep -E \".*\.rb\")"
alias birspec="bundle exec rspec"
alias brout="bundle outdated"
alias brake="bundle exec rake"
alias brails="bundle exec rails"
alias brc="bundle exec rails c"

alias yamcop="yamllint --strict \$(git ls-files '*.yaml' '*.yml')"
alias ansicop="ansible-lint *.yml"

alias sm="smerge"
