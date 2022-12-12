class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :pet_name
      t.string :category
      t.string :breed
      t.float :price
      t.text :description
      t.boolean :is_meet_up, default: false
      t.text :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
