class User < ActiveRecord::Base
  # Include default devise modules.
  # :registerable, #recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  devise :database_authenticatable, :trackable
  include DeviseTokenAuth::Concerns::User
  
end
