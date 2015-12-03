class User < ActiveRecord::Base
  belongs_to :client
  # before_create :generate_salt

  def self.authenticate
  end
end
