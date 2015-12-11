json.array! @locations do |location|
	json.id location.id
	json.name location.name
	json.zip location.zip
end