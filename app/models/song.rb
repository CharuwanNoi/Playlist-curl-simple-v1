class Song < ActiveRecord::Base
	has_many :enrolls
	has_many :playlists, through: :enrolls
end
