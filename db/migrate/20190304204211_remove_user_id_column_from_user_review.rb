class RemoveUserIdColumnFromUserReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_reviews, :user_id
  end
end
