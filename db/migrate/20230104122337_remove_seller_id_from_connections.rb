class RemoveSellerIdFromConnections < ActiveRecord::Migration[6.1]
  def change
    remove_column :connections, :seller_id, :bigint
  end
end
