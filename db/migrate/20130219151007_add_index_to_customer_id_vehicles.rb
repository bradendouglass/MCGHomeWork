class AddIndexToCustomerIdVehicles < ActiveRecord::Migration
  def change
    add_index :vehicles, :customer_id
  end
end
