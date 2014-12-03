class SeatType < ActiveRecord::Base
  attr_accessible :description, :type
  has_many :bus_set_types 
end
