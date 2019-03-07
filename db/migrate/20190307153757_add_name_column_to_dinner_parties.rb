class AddNameColumnToDinnerParties < ActiveRecord::Migration[5.2]
  def change
    add_column :dinner_parties, :name, :string
  end
end
