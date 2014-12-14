class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :logo
      t.string :company

      t.timestamps
    end
  end
end
