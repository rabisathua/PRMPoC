class User < ActiveRecord::Base
  # :registerable, #recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  devise :database_authenticatable, :trackable
  include DeviseTokenAuth::Concerns::User
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :client_users
  has_many :clients, through: :client_users

  scope :admins, ->{ User.where(type: Admin.name) }
  scope :client_admins, -> { User.where(type: ClientAdmin.name) }
  scope :liasons, -> { User.where(type: Liason.name) }
end
