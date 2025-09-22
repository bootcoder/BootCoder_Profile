FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0"]
