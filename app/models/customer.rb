class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state
  has_many :vehicles

end
