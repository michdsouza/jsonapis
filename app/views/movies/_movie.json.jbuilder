json.runtime movie.runtime
json.synopsis movie.synopsis
json.title movie.title
json.title movie.title
json.average_rating movie.average_rating
json.genre movie.genre.name
json.ratings movie.ratings do |rating|
  json.partial! rating
end