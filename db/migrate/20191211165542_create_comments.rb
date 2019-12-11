class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :dish_id
      t.text :description

      t.timestamps
    end
  end
end
