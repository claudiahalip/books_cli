class ReadingList 
    
  @@reading_list = []
  
  def self.add_to_reading_list(book)
      @@reading_list << book
  end

  def self.reading_list
      @@reading_list
  end  
   
end
