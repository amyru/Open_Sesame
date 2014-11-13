class AddPartySizeToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :party_size, :integer
  end
end
