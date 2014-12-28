class User < ActiveRecord::Base
 attr_accessible  :user_name, :password, :email
=begin
 validates :user_name, presence:true,
           uniqueness:true,
           format:/^[a-z\d_]{4,15}$/
 validates :password, presence:true,
           uniqueness:true,
           format: /(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/
 validates :email,presence: true,
           uniqueness:true,
           format: /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,6}$/
=end
end