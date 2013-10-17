class Rating < ActiveRecord::Base
	attr_accessible :rating, :movie_id, :user_id
	
	belongs_to :movie
	belongs_to :user
end