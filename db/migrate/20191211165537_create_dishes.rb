class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :calories
      t.text :recipe
      t.string :image
      t.integer :meal_id
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
