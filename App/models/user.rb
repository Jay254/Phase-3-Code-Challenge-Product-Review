class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
  
    # Returns the product with the highest star rating from this user
    def favorite_product
      self.products.order('reviews.star_rating DESC').first
    end
  
    # Removes all reviews by this user for a given product
    def remove_reviews(product_to_delete)
      self.reviews.where(product_id: product_to_delete.id).destroy_all
    end
end