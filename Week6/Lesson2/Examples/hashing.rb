require 'digest/sha1'
require 'base64'

puts "Choose a password"

password = gets.strip
salt     = Base64.encode64((rand * 100).to_s)

salted_password = Digest::SHA1.hexdigest "#{password}#{salt}"
unsalted_password = Digest::SHA1.hexdigest "#{password}"

puts "Your salt:         #{salt}"
puts "Salted Password:   #{salted_password}"
puts "Unsalted Password: #{unsalted_password}"
