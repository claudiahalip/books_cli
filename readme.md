## Book_CLI

BOOK_CLI is a command line application that allows you to use the Google Books API to search for books and construct a reading list.

## Installation
Ensure that you have Ruby installed properly
Make sure that you have all necessary gems by running:

<gem install net/http >

` gem install json `

` gem install rspec `

## Starting the program

Start the application by running:

 <ruby bin/start>

## Start the test by running:

 ` rspec `

## How to use the program

Book_CLI will provide all of the necessary prompts - they are listed here:
You will be brought to a menu: 
Instructions:
To exit the program type 'exit'.
To search for books write down your query.
To see your reading list type 'reading list'.
After introducing the query the application will only pull 5 books at a time. 
A book can be selected by the number associated with the book.
You can see the selection made by typing 'reading list'.
You also can make a new search, make a new selection or exit the program. 



## CLI application plan:

1.getting the Google Book API endpoint
   "https://www.googleapis.com/books/v1/volumes?q=#{search_quirey}&maxResults=5&key=#{ENV["API_KEY"]}"

    getting an API_KEY 

2.create the project folder and initialize with rspec for tests

3.create the folders inside the project(bin, lib, environment.rb, readme.md, .env, .gitignore)

4.create start file inside bin

5.create the files inside the lib:
  -a file (api.rb) that will make calls to the API
  -a file (book.rb) that will create book objects, keep the track of the book object attributes, save book objects, keep track of the readeing book
  -a file (cli.rb)  that will interact with the user, control the flow of the application
  
6.a book object will have the following attributes:
    -title
    -author
    -publisher
  The Book class will have 
    - a class method "all" that will get all the Book objects
    - a class method "clear" that will clear the array of all objects
    
    
