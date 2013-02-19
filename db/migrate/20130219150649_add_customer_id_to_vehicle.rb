class AddCustomerIdToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :customer_id, :integer
  end
end
