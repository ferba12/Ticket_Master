class SeatType < ActiveRecord::Base
  attr_accessible :abbreviation, :seat_type
  #Relationships
  has_many :bus_seat_types, :dependent => :destroy
end
