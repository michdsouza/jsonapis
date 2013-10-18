class MovieSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :title, :synopsis, :runtime, :average_rating

  has_many :ratings
  has_one :genre

  def average_rating
    object.average_rating
  end

  def ratings
    object.ratings.select { |rating| rating.user == current_user }
  end
end
