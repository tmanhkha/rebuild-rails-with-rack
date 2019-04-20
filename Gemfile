# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'thin'
gem 'tilt'
gem 'rack'
gem 'pg'
gem "otr-activerecord"
gem 'rake'
gem 'activerecord'

group :development, :test do
  gem 'rspec'
  gem 'irb', require: false
end

group :development do
  gem 'byebug'
end

gem "sidekiq", "~> 5.2"
