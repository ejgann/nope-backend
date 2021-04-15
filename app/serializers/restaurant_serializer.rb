class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :street, :city, :state, :zip, :review_id

  belongs_to :category 
  has_many :reviews 
end
