class Physician < ActiveRecord::Base
	belongs_to :client
	belongs_to :location
	belongs_to :speciality

	self.per_page = 10
	
	scope :by_location_and_speciality, ->(location_id, speciality_id) do
		where(location_id: location_id).where(speciality_id: speciality_id)
	end

	scope :by_involved, ->{ where(is_involved: true)	}

	scope :by_lead, ->{ where(is_lead: true) }

end

