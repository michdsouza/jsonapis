class MoviesController < ApplicationController
	respond_to :json

	def index
		@movies = Movie.all
	end
end
