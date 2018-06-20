require_relative './config/environment'

def reload!
	load_all './lib'
end

task :console do
 Pry.start
end

task :scrape_rooms do
	# Instantiate a scraper, and then have it find new rooms
	columbus_scraper = RoomScraper.new('https://columbus.craigslist.org/search/roo')
	columbus_scraper.call
	
# 	chillicothe_scraper = RoomScraper.new('https://chillicothe.craigslist.org/search/roo')
# 	chillicothe_scraper.call
	
	
	# After this method call, I should be able to say Room.all and have rooms there.
end