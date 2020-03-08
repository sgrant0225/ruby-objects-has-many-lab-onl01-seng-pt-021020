require 'pry'

class Artist 
 attr_accessor :name, :songs
 
 
  def initialize(name)
  @name = name
  end  
 
  def songs
   Song.all.select do |song|
     song.artist == self #self is the instance of that artist we currently working on
    end
   end
   
   def add_song(song) #tell song it belongs to that artist
      song.artist = self #song argument is an instance of Song
  end
  
  def add_song_by_name(song_name) #we want to use the add_song method
    song = Song.new(song_name) #set the new song = to song 
     add_song(song) #and pass it in our add_song method,which adds a song to an artist's collection
  end 
  
  def self.song_count
   songs
   binding.pry
  end  
end  


