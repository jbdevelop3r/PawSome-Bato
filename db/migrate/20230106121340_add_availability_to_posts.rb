class AddAvailabilityToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :availability, :string, default: "available"
  end
end
