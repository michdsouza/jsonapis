class PostsController < ApplicationController
	respond_to :json

	def index
		@posts = Post.all
    render :json => @posts.to_json(
         :only => [:title, :body, :created_at],
         :include => {
         		:category => { :only => [:name] },
            :likes => { :only => [:created_at], :include => [:user] },
            :user => { :only => [], :methods => [:full_name] },
         },
         :methods => [:likes_count]
        )
	end
end
