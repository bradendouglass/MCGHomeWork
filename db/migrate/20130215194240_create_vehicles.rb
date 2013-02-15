class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :stock_num
      t.string :vin
      t.integer :year
      t.string :make
      t.string :model
      t.integer :price
      t.string :status
      t.string :photo

      t.timestamps
    end
  end
end
