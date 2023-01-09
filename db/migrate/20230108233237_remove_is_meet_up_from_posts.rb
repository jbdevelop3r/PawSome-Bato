class RemoveIsMeetUpFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :is_meet_up
  end
end
