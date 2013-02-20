class Vehicle < ActiveRecord::Base
  attr_accessible :make, :model, :photo, :price, :status, :stock_num, :vin, :year, :customer_id
  has_many :vehicle_option
  belongs_to :customer
  
  mount_uploader :photo, VehicleUploader
  
  def self.import(file)
    file_read = file.read
    csv = CSV.parse(file_read, :headers => true)
    csv.each do |row|
       row = row.to_hash.with_indifferent_access
       Vehicle.create!(row.to_hash.symbolize_keys,
                      :without_protection => true)
    end
  end

  def self.buy(vehicle_id, person_id)
    owner = Customer.find(person_id)
    vehicle = Vehicle.find(vehicle_id)
    if owner.name == "Dealer"
      vehicle.status = "Owned"
    else
      vehicle.status = "For Sale"
    end
    vehicle.customer_id = owner.id
    vehicle.save
  end

  def self.search(query, field)
    if query
      where('make like ?', "%#{query}%")
    else
      scoped
    end
  end
end
