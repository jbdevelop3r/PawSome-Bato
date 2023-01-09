class AddPickUpToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :pick_up, :string
  end
end
