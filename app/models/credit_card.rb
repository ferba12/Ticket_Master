class CreditCard < ActiveRecord::Base
  attr_accessible :company
  before_save :capitalizeEachWord
  validates :company, presence:true,                      
                      uniqueness: { case_sensitive: false },
                      format: /^([a-zA-z]+\s?){1,}$/

 
 def capitalizeEachWord
   self.name=self.name.strip.titleize
 end
end
