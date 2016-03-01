# books_controller.rb
require 'sinatra/base'

class BooksController < Sinatra::Base

  get '/' do
    puts "getting all books"
    'all books'
  end

  get '/:id' do |id|
    puts "getting the book #{id}"
    "book #{id}"
  end
end