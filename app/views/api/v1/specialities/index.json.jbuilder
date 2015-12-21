json.array! @specialities.flatten.uniq! do |speciality|
	json.id speciality.id
	json.name speciality.name
end