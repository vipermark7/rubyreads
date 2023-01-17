class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.text :body
      t.integer :book_id

      t.timestamps
    end
  end
end
