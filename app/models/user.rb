class User < ActiveRecord::Base
  # :registerable, #recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  devise :database_authenticatable, :trackable
  include DeviseTokenAuth::Concerns::User
  belongs_to :role
  has_one :liason
  has_many :client_users
  has_many :clients, through: :client_users

  # returns List of roles as roles are hierarchically arranged
  def roles
  	rls = self.role.parents
  	rls << self.role if self.role
  	rls.compact
  end

end
