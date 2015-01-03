class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :bus_route_id
      t.integer :bus_company_id
      t.string :departure_date
      t.datetime :arrival_date
      t.datetime :arrival_date
      t.timestamps
    end
  end
end
