class CreateBusCompanies < ActiveRecord::Migration
  def change
    create_table :bus_companies do |t|
      t.string :logo
      t.string :company
      t.timestamps
    end
  end
end
