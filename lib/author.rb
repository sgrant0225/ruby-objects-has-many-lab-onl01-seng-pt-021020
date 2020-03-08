require 'pry'

class Author 
  attr_accessor :name, :posts
  
 def initialize(name) 
  @name = name
 end
 
 def posts 
   Post.all 
 end   
 
 
 
 
end  