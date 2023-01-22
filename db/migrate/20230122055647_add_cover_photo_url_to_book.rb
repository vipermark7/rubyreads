class AddCoverPhotoUrlToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :cover_photo_url, :string
  end
end
