class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rating

  has_one :user, embed: :object
end
