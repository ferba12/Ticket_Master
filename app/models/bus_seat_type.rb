class BusSeatType < ActiveRecord::Base
  attr_accessible :bus_company_id, :description, :price, :seat_type_id
  belongs_to :seat_type
  belongs_to :bus_company
end
