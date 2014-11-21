# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141110155920) do

  create_table "break_points", :force => true do |t|
    t.string   "city"
    t.integer  "province_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "bus_companies", :force => true do |t|
    t.string   "company_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "bus_seat_types", :force => true do |t|
    t.integer  "bus_company_id"
    t.integer  "type_seat_id"
    t.text     "description"
    t.decimal  "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "credit_card_quotas", :force => true do |t|
    t.integer  "credit_card_id"
    t.integer  "quotes"
    t.integer  "interest"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "credit_cards", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "intermediate_break_points", :force => true do |t|
    t.integer  "schedule_id"
    t.integer  "break_point_id"
    t.date     "departure_date"
    t.time     "departure_time"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "provinces", :force => true do |t|
    t.string   "name",       :limit => 50, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "provinces", ["name"], :name => "index_provinces_on_name", :unique => true

  create_table "schedules", :force => true do |t|
    t.integer  "departure_id"
    t.date     "departure_date"
    t.time     "departure_time"
    t.integer  "arrival_id"
    t.date     "arrival_date"
    t.time     "arrival_time"
    t.integer  "bus_company_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "seat_types", :force => true do |t|
    t.string   "seat_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name",  :limit => 30, :null => false
    t.string   "password",   :limit => 30, :null => false
    t.string   "email",      :limit => 50, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["user_name"], :name => "index_users_on_user_name", :unique => true

end
