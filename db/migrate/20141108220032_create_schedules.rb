class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :departure_id
      t.date :departure_date
      t.time :departure_time
      t.integer :arrival_id
      t.date :arrival_date
      t.time :arrival_time
      t.integer :bus_company_id
      t.timestamps
    end
  end
end
