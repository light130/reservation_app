source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.0'
gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'slim-rails'
gem 'html2slim'
gem "jquery-rails"
gem 'devise'
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'rails_admin'
gem 'cancancan'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'vcr'
  gem 'webmock'
  gem 'rspec-rails'
end
