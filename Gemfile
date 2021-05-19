source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
gem 'faker'
ruby '2.6.3'
gem 'bcrypt', '3.1.11'
gem 'carrierwave'
gem 'mini_magick'
gem 'fog-aws'
gem 'rails', '~> 5.2.3'
gem 'dotenv-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'unicorn' # アプリケーションサーバのunicorn
gem 'mini_racer', platforms: :ruby # デプロイ時に必要
gem 'sass-rails', '~> 5.0'
gem "subdomain_locale"
gem 'uglifier', '>= 1.3.0'


gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capistrano', '3.6.0' # capistranoのツール一式
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'gretel'
  gem 'letter_opener_web'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do

  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'

  gem 'chromedriver-helper'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
