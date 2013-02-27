class VehicleOption < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :vehicle
  #attr_accessible :description, :name, :vehicle_id
end
