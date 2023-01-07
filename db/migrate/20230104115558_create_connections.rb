class CreateConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :connections do |t|
      t.bigint :seller_id
      t.bigint :customer_id

      t.timestamps
    end
  end
end
