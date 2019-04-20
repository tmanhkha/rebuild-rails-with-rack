$LOAD_PATH.unshift '.'

require 'config/application'
require 'config/setup'
require 'app/controllers/users_controller'
require 'app/controllers/home_controller'
require 'app/models/user'
require 'app/models/email'

use OTR::ActiveRecord::ConnectionManagement
use Rack::Static, root: 'app/assets', urls: ['/images', '/javascripts', '/css']
# use Rack::CommonLogger
use Rack::ContentLength
use Frack::Router do
  match '/' => 'home#index'
  match '/users' => 'users#index'
  match '/contact' => 'users#contact'
  match '/mail' => 'users#mail'
end

run Frack::Application