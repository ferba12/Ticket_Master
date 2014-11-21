class CreditCardQuota < ActiveRecord::Base
  attr_accessible :credit_card_id, :interest, :quotes
  belongs_to :credit_card
end
