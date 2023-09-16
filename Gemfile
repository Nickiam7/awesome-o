source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.6"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"

gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"

gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  gem 'pry', '~> 0.14.2'
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "bsvc", "~> 0.1.2"
gem "devise", "~> 4.8", ">= 4.8.1"
gem 'ruby-openai', '~> 4.2'
