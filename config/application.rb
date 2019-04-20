require 'rack'
require 'erb'
require 'tilt'

module Frack
  autoload :Router, 'config/initialize/router'
  autoload :Application, 'config/initialize/application'
  autoload :BaseController, 'config/initialize/base_controller'
end