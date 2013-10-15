class User < ActiveRecord::Base
	attr_accessible :first_name, :last_name

	has_many :posts
	has_many :likes

	def full_name
		"#{first_name} #{last_name}"
	end
end