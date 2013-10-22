# ## 1
# # collection @movies

# ## 2
# collection @movies, :object_root => false
# attributes :id, :title, :synopsis, :runtime

# ## 3
# collection @movies, :object_root => false
# attributes :id, :title, :synopsis, :runtime

# child :genre do
#   attributes :name, :description
# end

# ## 4
# collection @movies, :object_root => false
# attributes :id, :title, :synopsis, :runtime

# child :genre do
#   attributes :name, :description
# end

# child :ratings, :object_root => false do
#   attributes :rating
# end

# ## 5
# collection @movies, :object_root => false
# attributes :id, :title, :synopsis, :runtime

# child :genre do
#   attributes :name, :description
# end

# child :ratings, :object_root => false do
#   attributes :rating
# end

# child :user do
#   attributes :full_name
# end

## 6
# collection @movies, :object_root => false
# attributes :id, :title, :synopsis, :runtime

# child :genre do
#   attributes :name, :description
# end

# child :ratings, :object_root => false do
#   attributes :rating
# end

# child :user do
#   attributes :full_name
# end

# node(:average_rating) do |movie|
#   movie.average_rating
# end

## 7 Partials!
# collection @movies, :object_root => false
# extends 'movies/movie'

# child :genre do
#   extends 'genres/genre'
# end

# child :ratings, :object_root => false do
#   extends 'ratings/rating'
# end

# node(:average_rating) { |x|
#   x.average_rating
# }