class MoviesController < ApplicationController
	respond_to :json

	def index
		@movies = Movie.all
    
    ## 1
    render :json => @movies.to_json
    
    ## 2
    # render :json => @movies.to_json(:only => [:id, :title, :synopsis, :runtime])

    ## 3
    # render :json => @movies.to_json(:only => [:id, :title, :synopsis, :runtime],
    #     :include => {
    #       :genre => { :only => [:name] }
    #     })

    ## 4
    # render :json => @movies.to_json(:only => [:id, :title, :synopsis, :runtime],
    #     :include => {
    #       :genre => { :only => [:name] }
    #     },
    #     :methods => [:average_rating])
    
    ## 5
    # render :json => @movies.to_json(:only => [:id, :title, :synopsis, :runtime],
    #     :include => {
    #    		:genre => { :only => [:name] },
    #       :ratings => { :only => [:rating], :include => [:user => {:only => [], :methods => [:full_name]}] }
    #     },
    #     :methods => [:average_rating]
    #   )
	end
end
