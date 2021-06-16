class CLI
    
    def start
        puts "---------------------"
        puts "Hello!"
        puts "---------------------"
        self.menu
    end

    def menu
        puts "Instructions:"
        puts "To exit the program type 'exit'."
        puts "To search for books write down your query."
        puts "To see your reading list type 'reading list'"

        Book.clear
        user_input = gets.strip.downcase
        if user_input == "%" || user_input == " "
            puts "Invalid query, try again!"
            menu
        elsif user_input == "exit"
            puts "Goodbye!"
            exit
        elsif user_input == "reading list"
            display_reading_list
            menu
        else
            API.fetch_books(user_input) 
            display_list_of_books
            puts "To add a book into your reading list type the associated number with the book."
            puts "To exit, see your reading list, or continue searching, press any other key. "
            input = gets.strip.to_i - 1
            if input.between?(0,Book.all.length-1)
                select_a_book(input)
            else
                menu
            end
            puts "---------------------"
            menu
        end
    end

     def display_list_of_books
        if !Book.all.empty?
            Book.all.each.with_index do |book, index|
                puts "#{index + 1}. Title: #{book.title}"
                puts "Author: #{book.author}"
                puts "Publishing company: #{book.publisher}"
                puts "---------------------"
            end
        else
            puts "Try again!"
            puts "---------------------"
            puts "\n"
        end
    end

    def select_a_book(input)
        Book.add_to_reading_list(Book.all[input])
        puts "Your choice is saved on your Reading List."
    end


    def display_reading_list
        if  Book.reading_list == []
            puts "There is no selection made."
            puts "---------------------"
        else
            puts "YOUR READING LIST:"
            Book.reading_list.each do |book|
                puts "Title: #{book.title}"
                puts "Author: #{book.author}"
                puts "Publishing company: #{book.publisher}"
                puts "---------------------"
            end
        end
    end
end