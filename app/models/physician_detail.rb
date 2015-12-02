class PhysicianDetail < ActiveRecord::Base
	belongs_to :client
	belongs_to :location
	belongs_to :speciality

	scope :find_physicians, ->(location_id, speciality_id) do
		where(location_id: location_id).where(speciality_id: speciality_id).select(:id, :qualification, :designation, :physician_group, :primary_address, :department, :first_name, :middle_name, :npi_number, :last_name, :email_id, :years_of_experience, :is_involved, :is_lead, :speciality_id, :location_id)
	end

	scope :by_involved, ->{ where(is_involved: true)	}

	scope :by_lead, ->{ where(is_lead: true) }

end
