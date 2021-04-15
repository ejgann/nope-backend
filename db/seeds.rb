# require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
# (1..5).each do |id|
#     User.create!(
#         id: rand(1..5)
#         username: Faker::Name.unique.name,
#         email: Faker::Internet.email
#     )
# end
emily = User.create(username: "emily", email: "e@mail.com")
irena = User.create(username: "irena", email: "i@mail.com")
carrie = User.create(username: "carrie", email: "c@mail.com")
mandy = User.create(username: "mandy", email: "m@mail.com")

# RESTAURANTS
# (1..5).each do |id|
#     Restaurant.create!(
#         id: rand(1..5)
#         name= Faker::Restaurant.name,
#         phone= Faker::PhoneNumber.phone_number,
#         street= Faker::Address.street_address,
#         city= Faker::Address.city,
#         state= Faker::Address.state,
#         zip= Faker::Address.zip,
#         category_id: rand(1..4)
#     )
# end
rest1 = Restaurant.create(name: "Panera", phone: "123456789", street: "123 Abc St", city: "Denver", state: "CO", zip: "65201", category_id: 4)

rest2 = Restaurant.create(name: "Sunrise Cafe", phone: "123456789", street: "123 Abc St", city: "Denver", state: "CO", zip: "65201", category_id: 1)

rest3 = Restaurant.create(name: "Bueno Burrito", phone: "123456789", street: "123 Abc St", city: "Denver", state: "CO", zip: "65201", category_id: 2)

rest4 = Restaurant.create(name: "Bistro Italiano", phone: "123456789", street: "123 Abc St", city: "Denver", state: "CO", zip: "65201", category_id: 3)


# CATEGORIES
american = Category.create(food_type: "American")
mex = Category.create(food_type: "Mexican")
italian = Category.create(food_type: "Italian")
bakery = Category.create(food_type: "Bakery")


# REVIEWS
r1 = Review.create(title: "Wonderful!", rating: 4, comment: "Been coming here for over 10 years and have never been disappointed.", user_id: 1, restaurant_id: 4)
r2 = Review.create(title: "Meh. It is a chain...", rating: 3, comment: "Pretty basic for a chain cafe.", user_id: 2, restaurant_id: 1)
r3 = Review.create(title: "Dining in the mountains is awesome!", rating: 5, comment: "The food is great, and the view is even better. I love the trout.", user_id: 3, restaurant_id: 2)
r4 = Review.create(title: "There is nothing bueno about this place", rating: 1, comment: "Save your money and your time -- do not eat here. The staff is rude, and the food is sub-par.", user_id: 4, restaurant_id: 3)
r5 = Review.create(title: "My go-to for breakfast", rating: 4, comment: "I have always enjoyed their breakfast sandwiches and coffee.", user_id: 1, restaurant_id: 1)
r6 = Review.create(title: "Always a treat", rating: 5, comment: "I would rather go nowhere else for special occasions. This is my favorite for a great steak.", user_id: 2, restaurant_id: 2)