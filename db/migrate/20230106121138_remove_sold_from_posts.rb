class RemoveSoldFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :sold
  end
end
