class BusRoute < ActiveRecord::Base
  attr_accessible :destination, :origen,:origen_id,:destination_id
  belongs_to :destination, class_name: "BreakPoint"
  belongs_to :origen, class_name: "BreakPoint"
  has_many :schedules, dependent: :destroy
end
