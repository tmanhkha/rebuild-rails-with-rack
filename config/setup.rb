require 'bundler/setup'
require './lib/background_service'
require 'redis'

ENVIRONMENT = ENV['LIB_ENV'] || 'development'

Bundler.require(:default, ENVIRONMENT)

OTR::ActiveRecord.configure_from_file! 'config/database.yml'
