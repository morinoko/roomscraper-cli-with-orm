class RoomScraper
	
	def initialize(index_url)
		@doc = Nokogiri::HTML(open(index_url))
	end
		
	def call
		rows.each do |row_doc|
			data = scrape_row(row_doc)
			binding.pry
		end	
	end
	
	private
	
		def rows
			# ||= if the value exists, leave it alone. 
			# If not, assign the new value to the right
			@rows ||= @doc.search("div.content ul.rows li.result-row")
		end
		
		def scrape_row(row)
			# scrape an individual row. return hash of attributes
			{
				date_created: row.search("time").attribute("datetime").text,
				title: row.search("a.result-title").text,
				url: row.search("a.result-title").attribute("href").value,
				price: row.search("span.result-meta span.result-price").text
			}
		end
	
		
end
