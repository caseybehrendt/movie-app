class AddEnglishtoMovie < ActiveRecord::Migration[7.0]
  def change
    create_column :movies do |t|
      t.string :english
    end
  end
end
