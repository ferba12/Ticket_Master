class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name,null: false, limit: 30
      t.string :password,null: false , limit: 60
      t.string :email, null: false, limit:50
      t.timestamps
    end
    add_index :users, :user_name, unique: true
    add_index :users, :email, unique: true
  end
end
