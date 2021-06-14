CLI application plan:

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
    - a class method all that will get all the Book objects
    - a class method clear that will clear the array of all objects
    - a class 
