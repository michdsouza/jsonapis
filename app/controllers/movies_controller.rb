class MoviesController < ApplicationController
	respond_to :json

	def index
		@movies = Movie.all
    render :json => @movies.to_json(:only => [:id, :title, :synopsis, :runtime],
        :include => {
       		:genre => { :only => [:name] },
          :ratings => { :only => [:rating], :include => [:user => {:only => [], :methods => [:full_name]}] }
        },
        :methods => [:average_rating]
      )
	end
end
