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
       Vehicle.create!(row.to_hash.symbolize_keys)
    end
  end

  def self.search(query, field)
    if query
      where('make like ?', "%#{query}%")
    else
      scoped
    end
  end
end
