# books_controller.rb

require_relative '../../domain/repositories/book_repository'

class BooksController < ApplicationBaseController

  get '/' do
    puts "getting all books"
    @books = BookRepository.new.all
    erb :'/books', :layout => :'layout/public'
  end

  get '/:id' do |id|
    puts "getting the book #{id}"
    "book #{id}"
  end
end