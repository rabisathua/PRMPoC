class User < ActiveRecord::Base
  # :registerable, #recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  devise :database_authenticatable, :trackable
  include DeviseTokenAuth::Concerns::User
  has_one :liason
  has_many :client_users
  has_many :clients, through: :client_users


end
