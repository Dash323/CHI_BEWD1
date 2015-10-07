#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize (building_name, building_address, apartments=[])
		@building_name=building_name
		@building_address=building_address
		@apartments=apartments
	end
end

def view_apartment 
	@apartments.each do |apartment|
		puts "#{apartment.name} | #{apartment.apt_sqft}"
	end
end
