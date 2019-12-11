class AddFavoriteCountToMealPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :meal_plans, :favorites_count, :integer
  end
end
