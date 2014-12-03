class User < ActiveRecord::Base
 attr_accessible  :user_name, :password, :email
end