class CreateDinnerParties < ActiveRecord::Migration[5.2]
  def change
    create_table :dinner_parties do |t|
      t.integer :user_id
      t.datetime :date
      t.string :location
      t.string :cuisine
      t.integer :max_guests
      t.float :price_per_guest

      t.timestamps
    end
  end
end
