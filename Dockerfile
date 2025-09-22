FROM ruby:3.2.5

# Install OS packages
RUN apt-get update -qq && apt-get install -y \
  curl build-essential libpq-dev nodejs npm

# Enable Corepack to install Yarn
RUN npm install -g corepack && corepack enable && corepack prepare yarn@stable --activate

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle config set without 'development test'
RUN bundle install

COPY . .

CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0"]
