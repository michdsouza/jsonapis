class MoviesController < ApplicationController

	def index
		@movies = Movie.includes(:genre, :ratings => [:user]).all
    render json: @movies
	end
end
