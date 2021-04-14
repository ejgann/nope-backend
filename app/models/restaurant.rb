class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :users, through: :reviews
  validates :name, :phone, :street, :city, :state, :zip, :category_id, presence: true
end
