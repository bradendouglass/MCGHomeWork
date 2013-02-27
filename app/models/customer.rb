class Customer < ActiveRecord::Base
  #attr_accessible :address, :city, :name, :state
  include ActiveModel::ForbiddenAttributesProtection
  validates_presence_of :address, :city, :name, :state,
    :message => "All fields are required for a customer"
  has_many :vehicles

end
