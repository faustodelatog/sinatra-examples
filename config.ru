require 'sinatra/base'

Dir.glob('./app/{controllers}/*.rb').each { |file| require file }

#
# SongController.configure :development do
#   DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
# end
#
# SongController.configure :production do
#   DataMapper.setup(:default, ENV['DATABASE_URL'])
# end

# routes
map('/books') { run BooksController }
map('/autores') { run AuthorsController }