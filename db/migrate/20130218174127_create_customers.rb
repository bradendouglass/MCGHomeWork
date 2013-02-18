class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.references :vehicle

      t.timestamps
    end
    add_index :customers, :vehicle_id
  end
end
