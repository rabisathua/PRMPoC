json.array! @physicians do |physician|

	json.partial! physician

	json.speciality do
		json.name physician.speciality.name
	end

	json.location do
		json.name physician.location.name
		json.zip physician.location.zip
	end
end