class CreateBreakPoints < ActiveRecord::Migration
  def change
    create_table :break_points do |t|
      t.string :city
      t.integer :province_id
      t.timestamps
    end
  end
end
