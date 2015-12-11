json.array! @physicians do |physician|
	json.first_name physician.first_name
	json.middle_name physician.middle_name
	json.last_name physician.last_name
	json.qualification physician.qualification
	json.designation physician.designation
	json.department physician.department
	json.group physician.group
	json.address physician.address
	json.npi_number physician.npi_number
	json.email physician.email
	json.yrs_exp physician.years_of_experience
	json.is_involved physician.is_involved

	json.speciality do
		json.name physician.speciality.name
	end

	json.location do
		json.name physician.location.name
		json.zip physician.location.zip
	end
end