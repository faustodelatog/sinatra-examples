# books_controller.rb
require 'sinatra/base'

class BooksController < ApplicationBaseController

  get '/' do
    puts "getting all books"
    erb :'/books', :layout => :'layout/public'
  end

  get '/:id' do |id|
    puts "getting the book #{id}"
    "book #{id}"
  end
end