class Room
	attr_accessor :title, :date_created, :price, :url
	
	def self.create_from_hash(hash)
		room = self.new_from_hash(hash)
		room.save
	end
	
	def self.new_from_hash(hash)
		room = self.new
		
		room.title = hash[:title]
		room.date_created = hash[:date_created]
		room.price = hash[:price]
		room.url = hash[:url]
		room
	end
	
	def save
		puts "saving #{self}"
	end
	
end
