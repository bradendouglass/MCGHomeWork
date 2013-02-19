class RemoveVehicleIdFromCustomer < ActiveRecord::Migration
  def up
    remove_column :customers, :vehicle_id
  end

  def down
    add_column :customers, :vehicle_id, :integer
  end
end
