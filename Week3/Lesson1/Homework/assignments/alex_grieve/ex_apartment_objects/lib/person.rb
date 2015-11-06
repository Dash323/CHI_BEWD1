<<<<<<< HEAD
<<<<<<< HEAD
#Person Class.
class Person

end
=======
=======
>>>>>>> dff528c7e24a3107a57c296562bcc100ea8da680
# Create a person class
# For this assignment we need to simply hold data
# No methods are necessary
class Person
	attr_accessor :name, :credit_score, :gender

	def initialize(name, credit_score, gender)
		@name = name
		@credit_score = credit_score
		@gender = gender
	end

	# Gracefully return the name if asked
	def to_s
		"#{self.name}"
	end
end
<<<<<<< HEAD
>>>>>>> a12757d711ae0cd7f1e3955ca1486f0d18f94367
=======

>>>>>>> dff528c7e24a3107a57c296562bcc100ea8da680
