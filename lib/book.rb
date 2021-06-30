class Book
    attr_accessor :title, :author, :publisher

    @@all = []

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
end