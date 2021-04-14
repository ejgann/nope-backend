class Category < ApplicationRecord
    has_many :restaurants
    validates :food_type, presence: true
end
