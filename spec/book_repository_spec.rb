require 'book_repository'

describe BookRepository do

  def reset_books_table
    seed_sql = File.read('spec/seeds.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_books_table
  end

  it 'return an array of all books' do 
    repo = BookRepository.new
    books = repo.all 

    expect(books.length).to eq 3 

    expect(books[0].id).to eq "1"
    expect(books[0].title).to eq "Twilight"
    expect(books[0].author_name).to eq "Stephanie Meyer"

  end

  it 'returns an array of all books' do 
    repo = BookRepository.new
    books = repo.all 

    expect(books.length).to eq 3 

    expect(books[2].id).to eq "3"
    expect(books[2].title).to eq "Becoming"
    expect(books[2].author_name).to eq "Michelle Obama"

  end
end