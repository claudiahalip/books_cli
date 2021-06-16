require './lib/cli.rb'
require './lib/book.rb'
require './lib/api.rb'


RSpec.describe CLI do
     
    it "has an instance method 'start" do
        allow(CLI.new).to receive(:start)
    end

    it "has an instance method 'menu" do
        allow(CLI.new).to receive(:menu)
    end


    it "has an instance method 'display_list_of_books" do
        allow(CLI.new).to receive(:display_list_of_books)
    end

    it "has an instance method 'select_a_book" do
        allow(CLI.new).to receive(:select_a_book)
    end

    describe " #select_a_book method " do
        let(:book) {instance_double('Book')}
        it "saves the instance book inside the global variable @@reading_list" do
            Book.class_variable_set(:@@reading_list, [book])
            expect(Book.reading_list).to match_array([book])
        end
        it "prints a message for the user" do
            expect do
                CLI.new.select_a_book(1)
            end.to output("Your choice is saved on your Reading List.\n").to_stdout
        end
    end

    it "has an instance method 'display_reading_list" do
        allow(CLI.new).to receive(:display_reading_list)
    end
end