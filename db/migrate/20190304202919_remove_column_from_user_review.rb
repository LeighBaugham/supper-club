class RemoveColumnFromUserReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_reviews, :dinner_party_id
    add_column :user_reviews, :dinner_guest_id, :integer
  end
end
