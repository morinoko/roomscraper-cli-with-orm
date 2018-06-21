require 'bundler'
Bundler.require

require 'open-uri'

# Used for room_orm.rb example class
# DB = {
# 	:connection => SQLite3::Database.new("db/rooms-development.sqlite")
# }

# Used for room.rb example class
ActiveRecord::Base.establish_connection(
	:adapter => "sqlite3",
	:database => "db/rooms-development.sqlite"
)

require_all 'lib'