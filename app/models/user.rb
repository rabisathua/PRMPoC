require 'securerandom'

class User < ActiveRecord::Base
  # Include default devise modules.
  # :registerable, #recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  devise :database_authenticatable, :trackable
  include DeviseTokenAuth::Concerns::User
  before_validation :set_uid

  private
  def set_uid
  	self.uid = SecureRandom.uuid.gsub('-', '')
  end
end
