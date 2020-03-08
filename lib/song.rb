class Song 
 attr_accessor :artist, :name
 
 @@all = []
 
 def initialize(name)
  @name = name
  @@all << self 
 end
 
 def self.all #class method self is referring to the class itself 
  @@all
 end  
 
 def artist_name
   artist = self.name
   #binding.pry
 end 
  
end  