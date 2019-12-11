class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :dish_id
      t.integer :fan_id
      t.integer :meal_id
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
