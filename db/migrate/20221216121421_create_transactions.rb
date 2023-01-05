class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :pet_name
      t.string :category
      t.string :breed
      t.float :price
      t.text :description
      t.boolean :is_meet_up
      t.text :location
      t.integer :seller_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
