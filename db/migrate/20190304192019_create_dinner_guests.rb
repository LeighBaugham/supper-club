class CreateDinnerGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :dinner_guests do |t|
      t.integer :user_id
      t.integer :dinner_party_id

      t.timestamps
    end
  end
end
