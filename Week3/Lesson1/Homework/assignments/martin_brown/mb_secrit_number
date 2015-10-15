# this class will generate our secret number for us
class SecretNumber
# 	attr_accessor :SecretNumber
# 		def initialize (SecretNumber)
# 			@SecretNumber=rand(10)
# 		end
# 	end
# end
#.self allows your to access a method outside of a call

	def self.generate
		secret_array=[]

		10.time do 
			secret_array.push(rand(1..10))
		end 

		secret_array.sample(1)
	end
end