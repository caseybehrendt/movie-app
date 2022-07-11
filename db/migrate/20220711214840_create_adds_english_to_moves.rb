class CreateAddsEnglishToMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :adds_english_to_movies do |t|
      t.string :english

      t.timestamps
    end
  end
end
