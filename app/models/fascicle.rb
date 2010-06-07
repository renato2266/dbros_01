class Fascicle < ActiveRecord::Base
  
  has_and_belongs_to_many :names
  has_and_belongs_to_many :societies
  
end
