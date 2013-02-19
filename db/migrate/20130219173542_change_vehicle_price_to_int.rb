class ChangeVehiclePriceToInt < ActiveRecord::Migration
  def up
    remove_column :vehicles, :price
    add_column :vehicles, :price, :decimal, precision: 8, scale: 2
  end

  def down
    remove_column :vehicles, :price
    add_column :vehicles, :price, :integer
  end
end
