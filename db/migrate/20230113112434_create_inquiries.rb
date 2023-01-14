class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.string :inquirer_name
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
