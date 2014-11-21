class Schedule < ActiveRecord::Base
  belongs_to :arrival, class_name: "BreakPoint"
  belongs_to :departure, class_name: "BreakPoint"
  
end
  