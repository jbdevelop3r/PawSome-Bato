class AddReviewerToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :reviewer, :string
  end
end
