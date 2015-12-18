class Speciality < ActiveRecord::Base
	has_many :client_specialities
	has_many :clients, through: :client_specialities
	has_many :physician_details

  validates :name, uniqueness: true

end