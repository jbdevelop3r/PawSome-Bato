class RemoveUsersIdFromConnections < ActiveRecord::Migration[6.1]
  def change
    remove_reference :connections, :users, null: false

  end
end
