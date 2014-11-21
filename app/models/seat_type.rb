class SeatType < ActiveRecord::Base
  has_many :bus_seat_types
end
