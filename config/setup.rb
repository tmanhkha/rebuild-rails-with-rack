require 'bundler/setup'
require './lib/background_service'
require 'redis'
require './config'

ENVIRONMENT = ENV['LIB_ENV'] || 'development'

Bundler.require(:default, ENVIRONMENT)