class AddCommentCountToDishes < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :comments_count, :integer
  end
end
