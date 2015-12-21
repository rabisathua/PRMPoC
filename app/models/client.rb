class Client < ActiveRecord::Base
	has_many :client_specialities
	has_many :client_users
	has_many :specialities, through: :client_specialities
	has_many :client_users, through: :client_users


	validates :name, presence: true, uniqueness: true
	# validates :description, :logo_path, :init_path, presence: true

	
end