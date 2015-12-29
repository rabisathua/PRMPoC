class Physician < ActiveRecord::Base
	belongs_to :client
	belongs_to :location
	belongs_to :speciality
	has_many :liason_physicians
	has_many :liasons, through: :liason_physicians

	self.per_page = 10
	
	scope :by_location_and_speciality, ->(location_id, speciality_id) do
		eager_load(:location, :speciality).where(location_id: location_id).where(speciality_id: speciality_id)
	end

	scope :by_involved, ->{ where(is_involved: true)	}

	scope :by_lead, ->{ where(is_lead: true) }

	scope :by_liason, ->(liason_id){ Liason.where(id: liason_id).last.physicians }
end

