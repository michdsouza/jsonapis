json.array! @movies do |movie|
  json.runtime movie.runtime 
  json.synopsis movie.synopsis
  json.title movie.title
  json.average_rating movie.average_rating
end

#### Comments ####
##################

# json.extract! movie, :runtime, :synopsis, :title, :average_rating
# json.partial! movie