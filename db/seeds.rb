# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'active_record/fixtures'
ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "users")
ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "provinces")
ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "break_points")
# ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "bus_companies")
# ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "seat_types")
# ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "credit_cards")
# ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "bus_seat_types")
# =begin
# ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "schedules")
# ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "intermediate_break_points")
# end