class VehicleOption < ActiveRecord::Base
  belongs_to :vehicle
  attr_accessible :description, :name
end
