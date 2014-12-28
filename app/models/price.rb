class Price < ActiveRecord::Base
  attr_accessible :destination_id, :origen_id
  belongs_to :bus_company
end
