class BreakPoint < ActiveRecord::Base
  attr_accessible :city,:province_id,:province
  belongs_to :province
  before_save :capitalizeEachWord
  validates :city, presence: true,
                   uniqueness: true,
                   format: /^([[:alpha:]]+\s?){1,}$/
  def capitalizeEachWord
   self.city=self.city.downcase.split.map(&:capitalize).join(' ')
  end              
end