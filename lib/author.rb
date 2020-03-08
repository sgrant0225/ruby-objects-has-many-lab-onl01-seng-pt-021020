require 'pry'

class Author 
  attr_accessor :name, :posts
  
 def initialize(name) 
  @name = name
 end
 
 def posts 
   Post.all.select do |post|
     post.author == self
  end
 end   
 
 def add_post(post) #tells the post it belongs to that author
   post = self
 end 
 
 
 
end  