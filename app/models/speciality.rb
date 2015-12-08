class Speciality < ActiveRecord::Base
	# name, client_id
	belongs_to :client
	has_many :physician_details

	validates :name, :client_id, presence: true
  validates :name, uniqueness: true

	scope :for_select, ->{Speciality.select(:id, :name)}	
end