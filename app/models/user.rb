class User < ActiveRecord::Base
  attr_accessible :email, :password, :user_name
end
