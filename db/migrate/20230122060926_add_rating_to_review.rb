class AddRatingToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :rating, :decimal
  end
end
