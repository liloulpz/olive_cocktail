class AddPhotoUrlToCocktails < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :photo_url, :string
  end
end
