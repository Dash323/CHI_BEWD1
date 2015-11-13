#Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.

require_relative 'michael_halgas_secret_number_SecretNumber.rb'

class Game
  attr_accessor :s_num, :try, :correct
  
  def initialize
    @s_num = SecretNumber.generate
    @try = 3
    @correct = 0
  end


  def start_game
    puts "\nChoose a number between 1 and 10"
    guess = gets.strip

    if guess.to_i > @s_num
        @try -= 1
        puts "You're too high. You have #{@try} attempts remaining.\n"
      elsif guess.to_i < @s_num
        @try -= 1
        puts "Too low. You have #{@try} attempts remaining.\n"
      else
        puts "You got it!\n"
        @correct += 1
    end
  end


    def play_game
      while @try > 0 and @correct == 0 do
      do_guess = start_game
      end
    end

end