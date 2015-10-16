require 'mb_person'
require 'mb_secret_number'

# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

class Game
	attr_accessor :player_name, :secret_number, :remaining_guesses

	def initialize(player_name)
		@player_name=Person.new(player_name)
		@secret_number=SecretNumber.generate
	end


	def choose

		puts"choose and number between 1 and 10"
		guess=gets.strip

		if guess=self.secret_number
			puts "you guessed right"
		elsif guess>self.secret_number
			puts "your to high"
		elsif guess<self.secret_number
			puts "your to low"
		end 
	end

	def play
		3.times do
			do_guess=self.choose
				break 
			if do_guess=="you guessed wrong"
			
			end
		end
	end
end
_

#=================================
# 	attr_accessor :name, :secret_number
# 	def initializer(name, secret_number)
# 		@name=Person.new
# 		@secret_number=secret_number.new
# 	end

# #restart=true

# 	def guess_check (PlayerInput, secret_number, attempts)
# 		if PlayerInput==@secret_number
# 			puts "yay! you did it! you guessed the [#{@secret_number}]"
# 		elsif PlayerInput>@secret_number
# 			puts "To high!"
# 		elsif PlayerInput<@secret_number
# 			puts "To low!"
# 		elsif 	
# 			attempts==0
# 			puts "Sorry, you failed! the secret number was [#{@secret_number}"
# 		end 
# 	end 

# 	while restart 

# 		guesses=[]
# 		attempts=3
# #what does "while" do?
# 		while attempts
# 			attempts=attempts-1
# 			puts "guess the secret_number, you have #{attempts} left."
# 			PlayerInput=gets.to_i
# 			guess.push(PlayerInput)
# 			guess_check(PlayerInput, secret_number, attempts)
# 			puts "you've guessed #{guesses}"
# 			break if PlayerInput==@secret_number || attempts=0	
#          end 

#     puts "Do you want to play again?(y/n)"  	
#     answer=git.strip
#    	restart=false if answer=="n"
#     end
					
# end
