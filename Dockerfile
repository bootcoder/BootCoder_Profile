FROM ruby:3.2

# Install OS dependencies
RUN apt-get update -qq && apt-get install -y \
  curl gnupg build-essential libpq-dev nodejs

# Install Yarn
RUN npm install -g corepack

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --without development test

COPY . .

CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0"]
