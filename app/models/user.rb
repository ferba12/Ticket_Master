class User < ActiveRecord::Base
  attr_accessible :email, :password, :user_name
  validates_presence_of :user_name,:email,:password
  validates_uniqueness_of :user_name,:email, :password
  validates_format_of :user_name, :with => /^[a-z0-9_-]{6,30}$/, message: "The user name format is invalid"
  validates_format_of :password, :with => /^[a-z0-9_-]{6,30}$/i, message: "The password format is invalid"   
  validates_format_of :email , :with => /^[a-z0-9._-]{6,30}@[a-z0-9-]{3,30}+\.([a-z]{2,4})$/,message: "The email format is invalid"
end
