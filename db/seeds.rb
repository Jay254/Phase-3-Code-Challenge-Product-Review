# Use faker gem to generate mock data for seeding
require 'faker'

# Create 20 random users and products
20.times do
  User.create(name: Faker::Name.name)
  Product.create(name: Faker::Commerce.product_name)
end

# Create 100 random reviews
100.times do
  review = {
    product_id: Faker::Number.between(from: Product.first.id, to: Product.last.id),
    user_id: Faker::Number.between(from: User.first.id, to: User.last.id),
    star_rating: Faker::Number.between(from: 1, to: 5),
    comment: Faker::Lorem.sentence,
    created_at: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
    updated_at: Time.now.strftime('%Y-%m-%d %H:%M:%S')
  }

  # Build the SQL statement to insert the review directly into the reviews table
  sql = "INSERT INTO reviews (product_id, user_id, star_rating, comment, created_at, updated_at) VALUES (#{review[:product_id]}, #{review[:user_id]}, #{review[:star_rating]}, '#{review[:comment]}', '#{review[:created_at]}', '#{review[:updated_at]}')"

  # Execute the SQL statement using the connection from ActiveRecord
  ActiveRecord::Base.connection.execute(sql)
end
