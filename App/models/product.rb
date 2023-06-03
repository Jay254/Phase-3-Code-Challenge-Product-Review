class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, star_rating, comment)
        Review.create(product_id: self.id, user_id: user.id, star_rating: star_rating, comment: comment)
    end

    def print_all_reviews
        self.reviews.each do |review|
          puts "Review for #{self.name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
        end
    end

    def average_rating
        total_reviews = self.reviews.count
        return 0 if total_reviews.zero?
    
        sum_ratings = self.reviews.sum(:star_rating)
        sum_ratings.to_f / total_reviews
    end
end