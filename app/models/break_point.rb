class BreakPoint < ActiveRecord::Base
  attr_accessible :break_point_name, :city
  belongs_to :province  
end
