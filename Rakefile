require "bundler/setup"
load "tasks/otr-activerecord.rake"

OTR::ActiveRecord.db_dir = 'db'
OTR::ActiveRecord.migrations_paths = ['db/migrate']
OTR::ActiveRecord.seed_file = 'seeds.rb'


namespace :db do
  task :environment do
    require_relative 'config/setup'
  end
end