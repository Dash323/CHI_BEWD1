class NewsPaper
  attr_accessor :stories

  def initialize
    @stories = []
  end

  def self.generate_random_story
    "This random event happened on day #{rand(28)} of this month."
  end

  def add_story(story)
    # the below code is the same as: @stories << story
    self.stories << story
  end
end

<<<<<<< HEAD

story = NewsPaper.generate_random_story #=> "This random event happened on day 20 of this month." 

paper = NewsPaper.new 
5.times do
  paper.add_story(NewsPaper.generate_random_story) 
end 

paper2=NewsPaper.new
5.times do
  paper.and_story(NewsPaper.generate_random_story)
end

paper2.stories.each do |story|
  puts story
end 

puts "\n+++++++++++++++++++++++++++++++++++++\n"
=======
#story = NewsPaper.generate_random_story #=> "This random event happened on day 20 of this month." 

paper = NewsPaper.new 
5.times do
  rando_story = NewsPaper.generate_random_story
  paper.add_story(rando_story) 
end

paper2 = NewsPaper.new
5.times do
  paper2.add_story(NewsPaper.generate_random_story)
end

paper.stories.each do |story|
  puts story
end
puts "\n========================\n"
paper2.stories.each do |story|
  puts story
end
>>>>>>> c4c394ebb4822949e1ba52ff9d3b4821068740fc

# p paper.stories #=> ["This random event happened on day 20 of this month."]
# puts "================="
# p paper2.stories
