require `book_repository`

describe BookRepository do

  def reset_books_table
    seed_sql = File.read('spec/seeds.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_books_table
  end

  # (your tests will go here).
end