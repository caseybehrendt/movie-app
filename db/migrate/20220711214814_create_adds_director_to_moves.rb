class CreateAddsDirectorToMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :adds_director_to_movies do |t|
      t.string :director

      t.timestamps
    end
  end
end
