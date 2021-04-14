class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  validates :title, :rating, :comment, :user_id, :restaurant_id, presence: true
end
