class MoviesController < ApplicationController
	respond_to :json

	def index
		@movies = Movie.includes(:genre, :ratings => [:user]).all
	end
end
