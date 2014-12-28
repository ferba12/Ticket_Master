class CreateSeatTypes < ActiveRecord::Migration
  def change
    create_table :seat_types do |t|
      t.string :abbreviation 
      t.string :seat_type
      t.timestamps
    end
  end
end
