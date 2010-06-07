class Area < ActiveRecord::Base
  has_many :names
  has_many :associations
  belongs_to :ambit
end
