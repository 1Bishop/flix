class AddFieldsToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :released_on, :date
    add_column :movies, :description, :text
  end
end
