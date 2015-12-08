FactoryGirl.define do
  factory :physician do
    first_name "Alex"
		middle_name "J"
		last_name "Smith"
		qualification "MBBS"
		designation "Dr"
		department "Pediatrics"
		group "A"
		address "Some address"
		npi_number 1
		years_of_experience "9.99"
		# is_involved
		# is_lead
		# speciality_id 1
		# location_id 1
		# client_id 1
		created_by 1
		updated_by 1
  end

end
