class AddFavoriteCountToDishes < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :favorites_count, :integer
  end
end
