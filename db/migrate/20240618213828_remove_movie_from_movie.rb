class RemoveMovieFromMovie < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :movie
  end
end
