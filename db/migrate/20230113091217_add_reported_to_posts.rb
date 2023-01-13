class AddReportedToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :reported, :boolean, default: false
  end
end
