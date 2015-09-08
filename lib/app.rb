require 'sinatra/base'
require 'sinatra/flash'
require_relative 'data_mapper_setup'
require_relative 'controllers/base'
require_relative 'controllers/user'
require_relative 'controllers/index'
require_relative 'controllers/session'
require_relative 'controllers/tasks'
require './lib/helpers/app_helpers'

module VirtualAssistant
  class App < Sinatra::Base
    use Rack::MethodOverride

    include AppHelpers

    register Sinatra::Flash

    use Routes::IndexController
    use Routes::UserController
    use Routes::SessionController
    use Routes::TasksController

    run! if app_file == $0
  end
end
