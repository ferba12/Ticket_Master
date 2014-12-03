class CreateSeatTypes < ActiveRecord::Migration
  def change
    create_table :seat_types do |t|
      t.string :kind
      t.string :description
      t.timestamps
    end
  end
end
