class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :comment, :user_id, :restaurant_id

  belongs_to :user
  belongs_to :restaurant 
end
