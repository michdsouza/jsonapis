class MovieSerializer < ActiveModel::Serializer
  ## 1
  # attributes :id, :title, :synopsis, :runtime, :average_rating

  ## 2
  # attributes :id, :title, :synopsis, :runtime, :average_rating

  # has_many :ratings
  # has_one :genre

  ## 3
  # attributes :id, :title, :synopsis, :runtime, :average_rating

  # has_many :ratings
  # has_one :genre

  # def average_rating
  #   object.average_rating
  # end

  ## 4
  # attributes :id, :title, :synopsis, :runtime, :average_rating

  # has_many :ratings
  # has_one :genre

  # def average_rating
  #   object.average_rating
  # end

  # def ratings
  #   object.ratings.select { |rating| rating.user == current_user }
  # end

  ## 5
  # embed :ids, include: true

  # attributes :id, :title, :synopsis, :runtime, :average_rating

  # has_many :ratings
  # has_one :genre

  # def average_rating
  #   object.average_rating
  # end

  # def ratings
  #   object.ratings.select { |rating| rating.user == current_user }
  # end

  ## 6
  # embed :ids, include: true

  # attributes :id, :title, :synopsis, :runtime, :average_rating

  # has_many :ratings, key: :rating_ids, root: :rating_objects
  # has_one :genre

  # def average_rating
  #   object.average_rating
  # end

  # def ratings
  #   object.ratings.select { |rating| rating.user == current_user }
  # end
end
