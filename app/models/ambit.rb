class Ambit < ActiveRecord::Base
  has_many :areas
  has_many :names
end
