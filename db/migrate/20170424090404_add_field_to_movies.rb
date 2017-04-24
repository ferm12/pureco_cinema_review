class AddFieldToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :image_file_name, :string
  end
end
