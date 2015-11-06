module Upvotable
  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end

class Photo
  attr_reader :photographer, :resolution, :upvotes

  include Upvotable

  def initialize(photographer, resolution)
    @photographer = photographer
    @resolution = resolution
    @upvotes = 1
  end
end

class Story
  attr_reader :title, :author, :upvotes

  include Upvotable

  def initialize(title, author)
    @title = title
    @author = author
    @upvotes = 1
  end
end

<<<<<<< HEAD
story = Story.new 
story.upvote! 

photo = Photo.new 
=======
story = Story.new
story.upvote!

photo = Photo.new
>>>>>>> 92f0683b04bbdad79cd7d3d8953c2880cccbb89d
photo.downvote!
