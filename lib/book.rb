class Book
    attr_accessor :title, :author, :publisher

    @@all = []
    @@reading_list = []

    def initialize(title:"no title", author: "no author", publisher:"no publisher")
        @title = title
        @author = author
        @publisher = publisher

        @@all << self
        
    end
    
    def self.all
        @@all
    end

    def self.clear
       @@all.clear
    end

    # def self.add_to_reading_list(book)
    #     @@reading_list << book
    # end

    def self.reading_list
        @@reading_list
    end

end