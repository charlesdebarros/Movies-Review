# frozen_string_literal: true

source 'https://rubygems.org'

# The URI.encode method had been deprecated in 3.0.0 and it was finally removed.
# Some useful looking hints here:
# https://docs.knapsackpro.com/2020/uri-escape-is-obsolete-percent-encoding-your-query-string
# without URI.encode, the app breaks. No work around yet.

ruby '3.2.1'

gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'devise'
gem 'haml', '~> 5.2', '>= 5.2.2'
gem 'jbuilder'
gem 'jquery-rails'
gem 'mini_racer', '~> 0.6.2'
gem 'nokogiri', '~> 1.13', '>= 1.13.8'
gem 'paperclip', '~> 6.1'
gem 'pg'
gem 'puma', '~> 5.6', '>= 5.6.4'
gem 'rails', '~> 6.1', '>= 6.1.7.2'
gem 'sass-rails'
gem 'sdoc', group: :doc
gem 'turbolinks'
gem 'uglifier'

# smtp gems related. Needed for Heroku deployment
gem 'net-imap', require: false
gem 'net-pop', require: false
gem 'net-smtp', '~> 0.3.1', require: false

group :development do
  gem 'web-console'
end

group :development, :test do
  gem 'byebug'
  gem 'spring'
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'
end
