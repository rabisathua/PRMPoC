class User < ActiveRecord::Base
  # :registerable, #recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  devise :database_authenticatable, :trackable
  include DeviseTokenAuth::Concerns::User
  belongs_to :client, foreign_key: "app_id"
  
end
