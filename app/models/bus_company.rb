class BusCompany < ActiveRecord::Base
  attr_accessible :company
  has_many :bus_set_types 
  			  
end
