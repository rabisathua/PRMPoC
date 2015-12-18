class Client < ActiveRecord::Base
	has_many :client_specialities
	has_many :specialities, through: :client_specialities

	validates :name, presence: true, uniqueness: true
	# validates :description, :logo_path, :init_path, presence: true
end