# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

gem "rails", "~> 6.0.3"
# gem "sqlite3"
gem "mysql2"
gem "puma", "~> 5.0"
gem "sassc-rails"
gem "uglifier", ">= 1.3.0"
# gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
# gem "jbuilder", "~> 2.5"
gem "active_model_serializers"
gem "rubocop", ">= 0.47", require: false
gem "rubocop-performance", require: false
gem "rubocop-rails", require: false
gem "foreman"
gem "simpacker"
gem "sentry-raven"
gem "global"
# gem "redis", "~> 4.0"
# gem "bcrypt", "~> 3.1.7"

# Use ActiveStorage variant
# gem "mini_magick", "~> 4.8"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

gem "slim-rails"

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec"
  gem "rspec-rails", "~> 4.0"
  gem "factory_bot_rails"
  gem "committee"
  gem "committee-rails"
  # gem 'sqlite3'
end

group :development do
  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.3"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "capistrano", require: false
  gem "capistrano-rails", require: false
  gem "capistrano-rbenv", require: false
  gem "capistrano-bundler", require: false
  gem "capistrano-rails-console", require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem "webdrivers"
  gem "database_cleaner"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
