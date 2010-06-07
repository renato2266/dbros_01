class Vehicle < ActiveRecord::Base
  
  has_many :name_vehicles
  has_many :names,  :through => :name_vehicles
  
  
end