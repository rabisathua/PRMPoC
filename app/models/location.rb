class Location < ActiveRecord::Base
	# location, zip, client_id
	belongs_to :client
	has_many :physician_details

	scope :for_select, ->{Location.select(:id, :name, :zip)}	
end
