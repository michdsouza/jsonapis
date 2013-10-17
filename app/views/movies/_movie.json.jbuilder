json.extract! movie, :runtime, :synopsis, :title, :average_rating
json.genre movie.genre.name
json.ratings movie.ratings do |rating|
  json.partial! rating
end