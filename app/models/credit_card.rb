class CreditCard < ActiveRecord::Base
  attr_accessible :name
  has_many :credit_card_quotas
end
