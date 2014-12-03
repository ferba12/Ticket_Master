class BreakPoint < ActiveRecord::Base
  attr_accessible :city,:province_id
  belongs_to :province  
end