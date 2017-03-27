<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> dff528c7e24a3107a57c296562bcc100ea8da680
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
<<<<<<< HEAD
=======

>>>>>>> a12757d711ae0cd7f1e3955ca1486f0d18f94367
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
<<<<<<< HEAD
=======
>>>>>>> dff528c7e24a3107a57c296562bcc100ea8da680
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
<<<<<<< HEAD
=======
>>>>>>> a12757d711ae0cd7f1e3955ca1486f0d18f94367
=======
>>>>>>> dff528c7e24a3107a57c296562bcc100ea8da680
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.

$:.unshift (File.dirname(__FILE__))
require 'lib/game'

<<<<<<< HEAD
<<<<<<< HEAD
# put code here print a welcome message for your user

# put code here ask the user for their name, and save it

# put code here to create a new game, and start it
=======
=======
>>>>>>> dff528c7e24a3107a57c296562bcc100ea8da680
class Main


	def play
		# Create the game class and assign:
		# - Number of guesses the player has
		# - The range of numbers to guess from
		game = Game.new(3, 10)


		# Welcome the player to the game
		game.welcome_to_the_game

		# Variable to determine if the player would like to play another round
		another_round = "y"

		while another_round == "y"
			another_round = game.play_round
		end

		game.goodbye
	end
	
end

main = Main.new()
main.play

## FEEDBACK
# Excellent work! You went beyond the basics. I really
# like the ability to start a new game at the end. You
# obviously get this stuff and I'm guessing you're doing
# a lot of Googling for how to do stuff which is a great
# habit to get into.
<<<<<<< HEAD
>>>>>>> a12757d711ae0cd7f1e3955ca1486f0d18f94367
=======

>>>>>>> dff528c7e24a3107a57c296562bcc100ea8da680
