class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :date
      t.text :summary
      t.text :review
      t.integer :book_id

      t.timestamps
    end
  end
end
