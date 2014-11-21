class BusCompany < ActiveRecord::Base
  attr_accessible :company_name
  has_many :bus_seat_types
end
