class AddIsSoldToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :is_sold, :boolean
  end
end
