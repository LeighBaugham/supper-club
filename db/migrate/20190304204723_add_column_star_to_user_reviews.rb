class AddColumnStarToUserReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :user_reviews, :rating, :integer
  end
end
