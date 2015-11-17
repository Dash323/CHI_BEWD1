###############################################################################
#
# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################
# Lets create an Object Oriented version of our Secret Number Game.
#
# Your updated game should have 4 classes (Main, SecretNumber, Game and Player)
#
# Below is a description of each class and some guidelines for each.
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.
#
# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
#
# Player
#  Should initialize the player's name.
#
# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.

$:.unshift (File.dirname(__FILE__))
#require 'lib/mb_game'
require 'mb_game'

# put code here print a welcome message for your user
def Welcome
	puts "Welcome the to greatest game on earth! created by ME! Martin"
end

# put code here ask the user for their name, and save it
def get_person_name
	puts "what is your name?"
	name=gets.strip
end

def Start(name)
	#puts "Hi"+{name}+"! Wow what a stupid name... but i'll let you play anyways. So here are the rules: try to guess a number between 1 and 10. You have 3 guesses. That is all. Lets Play!"
  puts "Hi #{name}! Wow what a stupid name... but i'll let you play anyways. So here are the rules: try to guess a number between 1 and 10. You have 3 guesses. That is all. Lets Play!"
end
# put code here to create a new game, and start it

def new_game (game)
	game=Game.new
end