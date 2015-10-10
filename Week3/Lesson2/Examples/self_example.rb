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

p paper.stories #=> ["This random event happened on day 20 of this month."]
