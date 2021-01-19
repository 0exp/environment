# Configure Spaceship prompt
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
SPACESHIP_USER_COLOR_ROOT=red
SPACESHIP_DIR_SHOW=true
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
SPACESHIP_HOST_SHOW=true

autoload -U promptinit
promptinit
prompt spaceship
