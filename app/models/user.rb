class User < ActiveRecord::Base
	attr_accessible :first_name, :last_name

	has_many :posts
	has_many :likes
end