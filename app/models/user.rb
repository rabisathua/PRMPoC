class User < ActiveRecord::Base
	has_secure_password
  has_one :liason
  has_many :client_users
  has_many :clients, through: :client_users


end
