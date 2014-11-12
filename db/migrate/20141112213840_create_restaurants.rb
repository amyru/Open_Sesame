class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :phone_number
      t.string :address
      t.integer :capacity

      t.timestamps
    end
  end
end
