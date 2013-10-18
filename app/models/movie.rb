class Movie < ActiveRecord::Base
	attr_accessible :title, :synopsis, :runtime, :genre_id

	belongs_to :genre
	has_many :ratings

	def average_rating
		rand(10).to_f
	end
end