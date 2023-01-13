class AddOwnerToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :owner, :string
  end
end
