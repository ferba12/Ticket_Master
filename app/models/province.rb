class Province < ActiveRecord::Base
  attr_accessible :name
  before_save :capitalizeEachWord
  has_many :breakPoints,:dependent => :destroy
  validates :name , presence: true,
                    uniqueness: true,
                    format: /^([a-zA-z]+\s?){1,}$/
 
 def capitalizeEachWord
   self.name=self.name.downcase.split.map(&:capitalize).join(' ')
 end
end
