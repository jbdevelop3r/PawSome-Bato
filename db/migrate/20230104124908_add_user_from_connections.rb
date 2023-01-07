class AddUserFromConnections < ActiveRecord::Migration[6.1]
  def change
    add_reference :connections, :user, null: false, foreign_key: true
  end
end
