class User < ActiveRecord::Base

  has_secure_password

  has_many :reviews

  validates :email, uniqueness: true
  validates :password, confirmation: true 
end
