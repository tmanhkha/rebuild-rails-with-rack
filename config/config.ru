$LOAD_PATH.unshift '.'

require 'config/application'
require 'config/setup'
require 'app/controllers/users_controller'
require 'app/controllers/home_controller'
require 'app/models/user'
require 'app/models/email'

use OTR::ActiveRecord::ConnectionManagement
use Rack::Static, root: 'app/assets', urls: ['/images', '/javascripts', '/css']
use Rack::ContentLength
use Frack::Router do
  get '/' => 'home#index'
  get '/users' => 'users#index'
  get '/contact' => 'users#contact'
  get '/mail' => 'users#mail'
end

run Frack::Application