class User < ActiveRecord::Base
  attr_accessible :user_name,:email, :password
  validates_presence_of :user_name,:email, :password
  validates_uniqueness_of :user_name,:email
  validates :user_name,
  length: { 
    minimum: 6,
    maximum: 30,
    too_short: "The user name must have at least %{count} characters."
  }
  validates :password,
  length: {
  	minimum: 6,
  	too_short: "The password must have at least %{count} characters."
  }
  validates_format_of :user_name, :with => /^[a-z0-9_-]{6,30}$/, 
   message: "The user name format is invalid"   
   # The field "password" accepts uppercase and lowercase letters
  validates_format_of :password, :with => /^[a-z0-9_-]{6,30}$/i, 
   message: "The password format is invalid"  
  validates_format_of :email , 
  :with => /^[a-z0-9._-]{6,30}@[a-z0-9-]{3,30}+\.([a-z]{2,4})$/,message: "The email format is invalid" 

  validate :atleast_one_uppercase

 
 def atleast_one_uppercase
     
     self.password.each_char do |character| 
          return true if  character=~/[[:upper:]]/  
     end   
    self.errors.add(:password, "Password should satisfy my condition")
   end
end
