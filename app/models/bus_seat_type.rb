class BusSeatType < ActiveRecord::Base
   belongs_to :bus_company
   belongs_to :seat_type
end
