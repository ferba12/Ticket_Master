class CreateBusSeatTypes < ActiveRecord::Migration
  def change
    create_table :bus_seat_types do |t|      
      t.integer :seat_type_id
      t.text :description
      t.integer :bus_company_id      
      t.timestamps
    end
  end
end
