class RemoveMovieFromActors < ActiveRecord::Migration[7.0]
  def change
    remove_column :actors, :movie, :integer
  end
end
