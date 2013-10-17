class Genre < ActiveRecord::Base
	attr_accessible :name, :description

	has_many :movies
end