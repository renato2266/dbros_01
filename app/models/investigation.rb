class Investigation < ActiveRecord::Base

   has_and_belongs_to_many :names
   has_many :interception

end
