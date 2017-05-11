source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

source "https://rubygems.org"
ruby "2.2.3"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# use devise for authentication
gem 'devise'
# use Omniauth
gem 'omniauth'
# use Omniauth w.Facebook login
gem 'omniauth-facebook', '4.0.0'
# use Omniauth w.Google login
gem 'omniauth-google-oauth2'
# google APIs
# gem 'google-api-client'
# date-picker
gem 'bootstrap-datepicker-rails'
# adding geocoder
gem 'geocoder'
# video processing for background
gem 'sidekiq'
# sidekiq plugin
gem 'sidetiq'
# frontend dependecy for sidekiq
gem 'sinatra'
# make my heroku site work
gem 'rails_12factor'
# bootstrap
gem 'bootstrap-sass'
# "make life easier gem" that generate nice forms without so much typing
gem 'simple_form'
# managers attachments easier
gem 'paperclip'
# calener for rails
gem "simple_calendar"
# backend-frontend communication notifications
gem 'pubnub'
# pry rails console
# gem 'pry'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# hamburger!
gem 'hamburgers'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# User jquery ui
gem 'jquery-ui-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'pg', '~> 0.18'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'pg', '~> 0.18'
  gem 'rails_12factor'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
