class BusCompany < ActiveRecord::Base
  attr_accessible :company
  before_save :capitalizeEachWord
  #Validations
  validates :company,presence: true,
                    uniqueness: { case_sensitive: false },
                    format: /^([a-zA-z0-9]+\s?){1,}$/

 def capitalizeEachWord
   self.company=self.company.strip.titleize
 end
 # Relationships
 has_many :prices, :dependent => :destroy
 has_many :bus_seat_types, :dependent => :destroy
end
