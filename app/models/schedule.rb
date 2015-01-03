class Schedule < ActiveRecord::Base
  attr_accessible :arrival_date, :arrival_date, :bus_company_id, :bus_route_id, :departure_date
  belongs_to :bus_route
  belongs_to :bus_company
end
