class Location < ActiveRecord::Base
	# location, zip, client_id
	belongs_to :client
	has_many :physician_details

	validates :name, :zip, :client_id, presence: true
	validates :name, :zip, uniqueness: true
	validates :zip, length: {maximum: 5}, format: {with: %r{\A\d{5}\z}}

	scope :for_select, ->{Location.select(:id, :name, :zip)}	
end
