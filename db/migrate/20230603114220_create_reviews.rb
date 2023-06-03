class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :star_rating
      t.string :comment
      t.timestamps
    end

    add_foreign_key :reviews, :products
    add_foreign_key :reviews, :users
  end
end
