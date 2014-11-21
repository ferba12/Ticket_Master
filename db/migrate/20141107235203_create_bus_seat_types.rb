class CreateBusSeatTypes < ActiveRecord::Migration
  def change
    create_table :bus_seat_types do |t|
      t.integer :bus_company_id
      t.integer :type_seat_id
      t.text :description
      t.decimal :price
      t.timestamps
    end
  end
end
