
class AddReviewsReferenceToComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :review_id

    add_reference :comments, :review, null: false, foreign_key: true
  end
end
