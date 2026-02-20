# .bashrc
export EDITOR=vim

# COLORS - A more colorful prompt
# \[\e[0m\] resets the color to default color
c_reset='\e[0m'

c_red='\e[31m'
c_green='\e[32m'
c_yellow='\e[33m'
c_purple='\e[35m'
c_cyan='\e[36m'

# $VARIABLE will render before the rest of the command is executed
echo -e "Logged in as ${c_purple}$USER${c_reset} at ${c_cyan}$(hostname)${c_reset}"
echo -e "Directory set to ${c_green}bootcore${c_reset} and loading ${c_purple}repo bashrc${c_reset}"
cd bootcore

# PS1 is the variable for the prompt you see everytime you hit enter
PROMPT_COMMAND='PS1="${c_purple}$(whoami):${c_cyan}\W${c_reset}$(git_prompt) :> "'
# export PS1='\n\[\033[0;31m\]\W\[\033[0m\]$(git_prompt)\[\033[0m\]:> '
export PS1=PROMPT_COMMAND

# Determines if the git branch you are on is clean or dirty
git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  # Grab working branch name
  git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  # Clean or dirty branch
  if git diff --quiet 2>/dev/null >&2; then
    git_color="${c_green}"
  else
    git_color=${c_red}
  fi
  echo " [$git_color$git_branch${c_reset}]"
}

# Colors ls should use for folders, files, symlinks etc.
# see `man ls` and search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex


# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'
alias docker-clean=' \
  docker container prune -f ; \
  docker image prune -f ; \
  docker network prune -f ; \
  docker volume prune -f '

# Git related aliases
alias g=git
alias gd='git checkout develop && git pull'
alias gm='git checkout master && git pull'
alias gti="git"
alias gits="git s"
alias gst="git status"
alias gap="git add -p"
alias gav="git commit -v"
alias gco="git checkout"
alias gb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gp="git pull"
alias gs="git stash"
alias gcp="git cherry-pick"
alias gpo="git push origin"
alias gph="git push heroku"
alias pick="git cherry-pick"
alias grac="git add . && git rebase --continue"







export RAILS_ENV=production

alias bcdb="psql -h bootcore-prod.cgh8sy4w2396.us-east-1.rds.amazonaws.com -U bootcore_user -d bootcore_prod -p 5432"
alias logdcw="docker-compose logs web"
alias logdcwt="docker-compose logs -f --since=10m web"

alias logdcn="docker-compose logs nginx"
alias logdcnt="docker-compose logs -f --since=10m nginx"

alias logna="tail -n 500 /var/log/bootcore/nginx/access.log"
alias logne="tail -n 500 /var/log/bootcore/nginx/error.log"
alias lograils="tail -n 1000 /var/log/bootcore/rails/production.log"

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Main Deploy Function
# returns an error if file is not tracked by current git repo
function deploy() {
  echo -e "\e[0;36;1mExecuting BootCore Deploy Script\e[0m"
  docker-compose down
  docker system prune -f --filter 'until=24h'
  docker system prune -a -f --volumes
  docker builder prune -a -f
  ./scripts/load_ssm_params.sh
  set -a
  . /home/ec2-user/bootcore/.env.production
  set +a
  echo "INSPECT ENV"
  echo $RDS_USERNAME
  echo -e printenv
  git pull
  bundle install
  docker-compose up --build -d
};

function logeo() {
  jq -r '
    [
      .remote_addr,
      (.request | tostring | .[0:50]),
      (.time
        | strptime("%Y-%m-%dT%H:%M:%S%z")
        | strftime("%m/%d - %H:%M")
      ),
      (.location // ""),
      .request_id
    ] | @tsv
  ' /var/log/bootcore/nginx/access.log | column -t -s $'\t'
}

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi

unset rc
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
