
class Province < ActiveRecord::Base
  attr_accessible :name
  validates :name,presence:true,
  				  uniqueness: true
  validates_format_of :name , :with =>/^[[:alpha:] ]{3,50}$/,message: "The province name format is invalid"
  has_many :break_points				  
  
  end
