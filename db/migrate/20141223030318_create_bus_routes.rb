class CreateBusRoutes < ActiveRecord::Migration
  def change
    create_table :bus_routes do |t|
      t.integer :origen_id
      t.integer :destination_id
      t.timestamps
    end
  end
end
