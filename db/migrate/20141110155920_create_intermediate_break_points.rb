class CreateIntermediateBreakPoints < ActiveRecord::Migration
  def change
    create_table :intermediate_break_points do |t|
      t.integer :schedule_id
      t.integer :break_point_id
      t.date :departure_date
      t.time :departure_time      
      t.timestamps
    end
  end
end
