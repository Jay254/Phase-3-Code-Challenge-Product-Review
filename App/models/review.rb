class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
  
    # Prints the details of the review to the console
    def print_review
      puts "Review for #{self.product.name} by #{self.user.name}: #{self.star_rating}. #{self.comment}"
    end
end