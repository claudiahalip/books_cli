require './lib/api.rb'
require './lib/book.rb'


RSpec.describe API do
    it "has a method 'fetch_books" do
        allow(API).to receive(:fetch_books)
    end
end