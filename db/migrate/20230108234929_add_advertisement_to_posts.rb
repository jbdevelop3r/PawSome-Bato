class AddAdvertisementToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :advertisement, :string
  end
end
