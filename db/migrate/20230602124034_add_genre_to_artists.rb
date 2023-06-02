class AddGenreToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :genre, :string
  end
end
