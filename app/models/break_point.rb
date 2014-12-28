class BreakPoint < ActiveRecord::Base
  attr_accessible :city,:province_id,:province
  before_save :capitalizeEachWord
  has_many :destinations,
            foreign_key: :destination_id,
            class_name: 'BusRoute',
            :dependent =>:destroy

            

  has_many :origens,
            foreign_key: :origen_id,
            class_name: 'BusRoute',
            :dependent => :destroy
            

  belongs_to :province
  before_save :capitalizeEachWord
  validates :city, presence: true,
                   uniqueness: { case_sensitive: false },
                   format: /^([[:alpha:]]+\s?){1,}$/  

  def capitalizeEachWord
   self.city=self.city.strip.titleize
  end              
end