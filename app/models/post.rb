class Post < ActiveRecord::Base
	attr_accessible :title, :body, :tags, :user_id, :category_id

	belongs_to :category
	belongs_to :user
	has_many :likes

	def likes_count
		likes.count
	end
end