class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :origen_id
      t.integer :destination_id
      t.integer :bus_company_id
      t.integer :seat_type_id
      t.float :price
      t.timestamps
    end
  end
end
