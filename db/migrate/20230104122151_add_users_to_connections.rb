class AddUsersToConnections < ActiveRecord::Migration[6.1]
  def change
    add_reference :connections, :users, null: false, foreign_key: true
  end
end
