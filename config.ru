require 'sinatra'

puts "inicia la configuracion"

puts "----- antes de incluir los controladores"
Dir.glob('./app/{controllers}/*.rb').each { |file| require file }
puts "----- despues de incluir los controladores"
#
# SongController.configure :development do
#   DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
# end
#
# SongController.configure :production do
#   DataMapper.setup(:default, ENV['DATABASE_URL'])
# end


# routes
puts "----- antes del mapeo de booksController"
map('/books') { run BooksController }
puts "----- despues del mapeo de booksController"

puts "----- antes del mapeo de authorsController"
map('/autores') { run AuthorsController }
puts "----- despues del mapeo de authorsController"


puts "finaliza la configuracion"