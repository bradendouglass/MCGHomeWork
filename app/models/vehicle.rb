class Vehicle < ActiveRecord::Base
  attr_accessible :make, :model, :photo, :price, :status, :stock_num, :vin, :year
end
