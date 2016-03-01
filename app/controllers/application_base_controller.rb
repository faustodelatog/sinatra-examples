# application_base_controller.rb
require 'sinatra/base'

class ApplicationBaseController < Sinatra::Application

  configure do
    puts "----- configurando la aplicacion base"
    set :views, 'app/views'
  end
end