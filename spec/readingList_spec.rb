require './lib/cli.rb'
require './lib/book.rb'
require './lib/api.rb'

RSpec.describe ReadingList do
  
    describe " @@reading_list " do
        it "is initialized as an empty array" do
            reading_list = ReadingList.class_variable_set(:@@reading_list, [])
            expect(reading_list).to match_array([])
        end
    end

    it "has a .add_to_reading_list method" do
        allow(ReadingList).to receive(:add_to_reading_list)
    end

    describe " .add_to_reading_list" do 
        let(:book) {instance_double('Book')}
        it "adds Book instance into @@reading_list class variable " do
            ReadingList.add_to_reading_list(book)
            expect(ReadingList.reading_list).to include(book)
        end

    end

    it "has a .reading_list method" do
        allow(ReadingList).to receive(:reading_list)
    end
    
    describe " .reading_list" do
        let(:book) {instance_double('Book')}
        it "returns the class variable @@reading_list" do
           ReadingList.class_variable_set(:@@reading_list, [book])
           expect(ReadingList.reading_list).to match_array([book])
        end
    end
end