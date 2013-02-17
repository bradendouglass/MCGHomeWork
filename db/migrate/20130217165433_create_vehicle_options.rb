class CreateVehicleOptions < ActiveRecord::Migration
  def change
    create_table :vehicle_options do |t|
      t.string :name
      t.string :description
      t.references :vehicle

      t.timestamps
    end
    add_index :vehicle_options, :vehicle_id
  end
end
