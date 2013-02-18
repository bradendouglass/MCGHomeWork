class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :vehicle
end
