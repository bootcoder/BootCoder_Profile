# .bashrc

export RAILS_ENV=production

alias bcdb="psql -h bootcore-prod.cgh8sy4w2396.us-east-1.rds.amazonaws.com -U bootcore_user -d bootcore_prod -p 5432"
alias rlog="docker-compose logs web"
alias tlog="docker-compose logs -f --since=10m web"

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
  ./load_ssm_params.sh
  set -a
  . /home/ec2-user/BootCoder_Profile/.env.production
  set +a
  echo "INSPECT ENV"
  echo $RDS_USERNAME
  echo -e printenv
  git pull
  bundle install
  docker-compose up --build -d
};

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
