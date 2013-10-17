class MoviesController < ApplicationController
	respond_to :json

	def index
		@movies = Movie.all
      render :json => @movies.to_json(
        :only => [:title, :synopsis, :runtime],
        :include => {
       		:genre => { :only => [:name] },
          :ratings => { :only => [:rating], :include => [:user => {:only => [:rating], :methods => [:full_name]}] }
          # :user => { :only => [], :methods => [:full_name] },
        },
        :methods => [:average_rating]
        )
	end
end
