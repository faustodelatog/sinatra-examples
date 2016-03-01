# books_controller.rb

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