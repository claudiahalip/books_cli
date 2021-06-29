class API

    def self.fetch_books(search_query)
        #return an array
        #binding.pry
        url = "https://www.googleapis.com/books/v1/volumes?q=#{search_query}&maxResults=5&key=#{ENV["API_KEY"]}"
        uri = URI(url)
        
        response = Net::HTTP.get(uri)
        
        book_response = JSON.parse(response)

        if book_response["items"]
            array_of_books = book_response["items"]
            
            array_of_books.each do |book|
                
                book_instance = Book.new(
                    :title => book["volumeInfo"]["title"] == nil ? "no title" :  book["volumeInfo"]["title"],
                    :author => book["volumeInfo"]["authors"] == nil ?   "no author" : book["volumeInfo"]["authors"].join(", "),
                    :publisher => book["volumeInfo"]["publisher"] == nil ?  "no publisher" : book["volumeInfo"]["publisher"]
                )
            end
        # else
        #     puts "Invalid query, please try again!"
            
        end
    end
    
end
