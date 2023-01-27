class AddReviewIdToComment < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.belongs_to :review
    end
  end
end
