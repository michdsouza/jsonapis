class Post < ActiveRecord::Base
	attr_accessible :title, :body, :tags

	belongs_to :category
	belongs_to :user
end