require './lib/book.rb'

RSpec.describe Book do
    let(:book) {book = Book.new(:title => "Home",:author => "Sue Green", :publisher => "Algonquin")}
    it 'has a title' do
        expect(book.title).to eq("Home") 
    end
    it 'has an author' do
        expect(book.author).to eq("Sue Green") 
    end
    it 'has a publisher' do
        expect(book.publisher).to eq("Algonquin") 
    end
  
end