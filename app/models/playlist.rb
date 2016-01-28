class Playlist < ActiveRecord::Base
	has_many :enrolls
	has_many :songs, through: :enrolls
end
