require './lib/book.rb'
require './lib/ReadingList.rb'

RSpec.describe Book do
    subject {described_class.new(:title => "Home",:author => "Sue Green", :publisher => "Algonquin")}

    it 'has a title' do
        expect(subject.title).to eq("Home") 
    end

    it 'has an author' do
        expect(subject.author).to eq("Sue Green") 
    end

    it 'has a publisher' do
        expect(subject.publisher).to eq("Algonquin") 
    end

    context 'initialize with no argument' do
        let(:book) {describe_class = Book.new}
        
        it 'should default to no title as title' do
            expect(book.title).to eq("no title") 
        end

        it 'should default to no author as author' do
            expect(book.author).to eq("no author") 
        end

        it 'should default to no publisher as publisher' do
            expect(book.publisher).to eq("no publisher") 
        end
    end 

    it "has a #initialize method" do
        allow(Book).to receive(:initialize)
    end

    describe " #initialize" do
        let(:book) {describe_class = Book.new}
        it "save the object into @@all global variable after initialization" do
           Book.all << book
           expect(Book.all).to include(book)
        end
    end
    
    describe " @@all " do
        it "is initialized as an empty array" do
            all = Book.class_variable_set(:@@all, [])
            expect(all).to match_array([])
        end
    end

    it "has a .all method" do
        allow(Book).to receive(:all)
    end

    describe ".all" do
        it "returns the class variable @@all" do
            Book.class_variable_set(:@@all, [subject])
            expect(Book.all).to match_array([subject])
        end
    end

    it "has a .clear method" do
        allow(Book).to receive(:clear)
    end
    
    describe ".clear" do
        it "resets the @@all class variable to an empty array" do
            Book.class_variable_set(:@@all, [subject])
            Book.clear
            expect(Book.all).to match_array([])
        end
    end

end