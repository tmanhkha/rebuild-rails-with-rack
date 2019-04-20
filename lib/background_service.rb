require 'sidekiq'

class HardWorker
  include Sidekiq::Worker

  def perform(opts = {})
    puts "#{opts}"
  end
end