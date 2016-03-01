# book_repository.rb

require_relative '../book'

class BookRepository

  def initialize
    @map = {}
    book1 = Book.new('abc123', 'El nombre de la rosa')
    @map['abc123'] = book1
    book2 = Book.new('xyz123', 'El padrino')
    @map['xyz123'] = book2
  end

  def all
    @map.values
  end

  def add(book)
    map[book.code] = book
  end

  def update(book)
    map[book.code] = book
  end

  def delete(book)
    map.delete book.code
  end

  def find(code)
    map.fetch code
  end
end