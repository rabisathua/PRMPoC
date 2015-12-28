class User < ActiveRecord::Base
  # :registerable, #recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  devise :database_authenticatable, :trackable
  include DeviseTokenAuth::Concerns::User
  has_many :client_users
  has_many :clients, through: :client_users
  has_one :liason

  def is_liason?
  	self.liason ? true : false
  end

end
