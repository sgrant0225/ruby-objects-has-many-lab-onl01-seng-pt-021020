class Post 
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
   @title = title
   @@all << self
  end 
  
  def self.all #class method returns an array of all post instances
    @@all
  end
  
end  