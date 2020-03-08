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
   post.author = self
 end 
 
 def add_post_by_title(post_title)
   new_post = Post.new(post_title)
    add_post(new_post)
 end 
 
 def self.post_count 
   Post.all.count
  #binding.pry
 end
end  