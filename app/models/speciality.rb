class Speciality < ActiveRecord::Base
	# name, client_id
	belongs_to :client
	has_many :physician_details

	scope :for_select, ->{Speciality.select(:id, :name)}	
end