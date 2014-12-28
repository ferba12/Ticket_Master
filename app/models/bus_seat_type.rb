class BusSeatType < ActiveRecord::Base
  attr_accessible :bus_company_id, :description, :seat_type_id
  belongs_to :bus_company
  belongs_to :seat_type
end
