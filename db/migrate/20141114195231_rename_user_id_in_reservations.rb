class RenameUserIdInReservations < ActiveRecord::Migration
  def change
  	rename_column :reservations, :user_id, :customer_id
  end
end
