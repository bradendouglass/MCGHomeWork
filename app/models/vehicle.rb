class Vehicle < ActiveRecord::Base
  attr_accessible :make, :model, :photo, :price, :status, :stock_num, :vin, :year
  has_many :vehicle_option
  
  mount_uploader :photo, VehicleUploader
  
  def self.search(query, field)
    if query
      where('make like ?', "%#{query}%")
    else
      scoped
    end
  end
end
