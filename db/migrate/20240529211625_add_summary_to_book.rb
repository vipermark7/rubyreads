class AddSummaryToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :summary, :string
  end
end
