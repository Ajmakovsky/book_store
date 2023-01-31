require_relative 'lib/database_connection'

DatabaseConnection.connect('book_store')

sql = 'SELECT id, '

# fill in params above

result = DatabaseConnection.exec_params(sql, [])

result.each do |record|
  p record
end 
