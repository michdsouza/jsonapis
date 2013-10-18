collection @movies, :object_root => false
extends('movies/movie')

child :genre do
  extends "genres/genre"
end

child :ratings, :object_root => false do
  extends "ratings/rating"
end

node(:average_rating) { |x|
  x.average_rating
}