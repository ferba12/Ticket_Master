class User < ActiveRecord::Base
 attr_accessible  :user_name, :password, :email
 validates :user_name, presence: true, uniqueness: true
 validates :password, presence: true  
 validates_presence_of :email, message: "Can not be empty"
 validates_uniqueness_of :email, message: "Must to be unique"
end  