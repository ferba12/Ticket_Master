class IntermediateBreakPoint < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :break_point
end
