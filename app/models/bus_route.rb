class BusRoute < ActiveRecord::Base
  attr_accessible :destination, :origen
  belongs_to :destination, class_name: "BreakPoint"
  belongs_to :origen, class_name: "BreakPoint"
end
