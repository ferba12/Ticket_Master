
class Province < ActiveRecord::Base
  attr_accessible :name
  validates :name,presence:true, uniqueness: true
  validates_format_of :name , :with =>/^([a-zA-z]{3,10}+\s{0,1}){1,10}$/,message: "The province name format is invalid"
  

  #has_many :break_points				  
  
  end
