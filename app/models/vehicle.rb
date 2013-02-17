class Vehicle < ActiveRecord::Base
  attr_accessible :make, :model, :photo, :price, :status, :stock_num, :vin, :year
  has_many :vehicle_option
  
  mount_uploader :photo, VehicleUploader
end
