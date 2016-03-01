# authors_controller.rb
require 'sinatra/base'

class AuthorsController < ApplicationBaseController

  get '/' do
    puts "getting all the authors"
    erb :authors, :layout => :'layout/public'
  end

  get '/:name' do |name|
    puts "getting author #{name}"
    "author #{name}"
  end

end