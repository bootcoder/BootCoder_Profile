FROM ruby:3.2.5

# Install OS packages (and clean up lists to save space)
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
  curl build-essential libpq-dev nodejs npm nginx-plus-module-geoip2 \
  && rm -rf /var/lib/apt/lists/*

# Enable Yarn via Corepack
RUN npm install -g corepack && corepack enable && corepack prepare yarn@stable --activate

WORKDIR /app

# Bundle install in production mode
ENV RAILS_ENV=production
ENV BUNDLE_WITHOUT="development test"
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4 --retry 3

# App code
COPY . .

# (Optional) If this is not an API-only app and you serve assets, precompile here:
RUN bundle exec rake assets:clobber
RUN bundle exec rake assets:precompile

# Expose Rails/Puma port
EXPOSE 3000

# Run Puma with your config; keep logs on STDOUT
CMD ["bash", "-lc", "rm -f tmp/pids/server.pid && bundle exec puma -C config/puma.rb"]
