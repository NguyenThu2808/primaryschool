class AddPicutreToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :picture, :string
  end
end
