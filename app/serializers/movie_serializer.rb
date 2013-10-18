class MovieSerializer < ActiveModel::Serializer

  attributes :id, :title, :synopsis, :runtime, :average_rating

  has_many :ratings, embed: :object
  has_one :genre, embed: :object

  def average_rating
    object.average_rating
  end
end
