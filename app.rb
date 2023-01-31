require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

DatabaseConnection.connect('book_store')

sql = 'SELECT id, title, author_name FROM books'

# fill in params above

result = DatabaseConnection.exec_params(sql, [])

result.each do |record|

  puts "#{record['id']} - #{record['title']} - #{record['author_name']}"
end 
