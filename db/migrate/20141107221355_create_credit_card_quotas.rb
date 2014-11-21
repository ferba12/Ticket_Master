class CreateCreditCardQuotas < ActiveRecord::Migration
  def change
    create_table :credit_card_quotas do |t|
      t.integer :credit_card_id
      t.integer :quotes
      t.integer :interest
      t.timestamps
    end
   
  end
end
