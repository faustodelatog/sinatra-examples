# authors_controller.rb
require 'sinatra/base'

class AuthorsController < Sinatra::Base

  get '/' do
    puts "getting all the authors"
    "all authors"
  end

  get '/:name' do |name|
    puts "getting author #{name}"
    "author #{name}"
  end

end