class Client < ActiveRecord::Base
	has_many :client_specialities
	has_many :client_users
	has_many :specialities, through: :client_specialities
	has_many :users, through: :client_users


	validates :name, presence: true, uniqueness: true
	
end