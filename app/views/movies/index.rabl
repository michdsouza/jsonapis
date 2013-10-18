collection @movies, :object_root => false

attributes :id, :title, :synopsis, :runtime

child :genre do
  attributes :name, :description
end

child :ratings, :object_root => false do
  attributes :rating
  child :user do
    attributes :full_name
  end
end