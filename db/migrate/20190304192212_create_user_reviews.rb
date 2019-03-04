class CreateUserReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :user_reviews do |t|
      t.integer :user_id
      t.integer :dinner_party_id
      t.text :review_text

      t.timestamps
    end
  end
end
