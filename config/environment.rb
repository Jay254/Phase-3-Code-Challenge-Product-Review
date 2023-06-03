ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
require 'faker'
Bundler.require(:default, ENV["RACK_ENV"])

require_relative '../App/models/product'
require_relative '../App/models/review'
require_relative '../App/models/user'

# 50.times do
#     User.create(name: Faker::Name)
# end

# Product.create(name: "Product A")
# Product.create(name: "Product B")

# Review.create(product_id: 1, user_id: 1, star_rating: 5, comment: "Great product!")
# Review.create(product_id: 2, user_id: 2, star_rating: 4, comment: "Nice product!")
