source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'

ruby '2.1.2'

# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-easing-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'


gem 'unicorn'
gem 'font-awesome-rails'
gem 'owlcarousel-rails'
# gem 'magnific-popup-rails'
gem 'newrelic_rpm'
# gem 'bootstrap-modal-rails'


group :production  do
  gem 'rails_12factor'  
end

group :development, :test do
  gem 'capistrano-rails'
  # gem 'debugger'
	gem 'pry'
  gem 'rspec-rails', '=2.14'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'launchy'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'guard-spork'
  gem 'ruby_gntp'
  gem 'spork', :github => 'sporkrb/spork'
  gem 'spork-rails', :github => 'sporkrb/spork-rails'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end