class CreateBusCompanies < ActiveRecord::Migration
  def change
    create_table :bus_companies do |t|
      t.string :company_name
      t.timestamps
    end
  end
end
