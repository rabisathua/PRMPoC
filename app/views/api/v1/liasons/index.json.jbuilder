json.array! @liasons do |liason|
	
	json.partial! liason

	json.name do
		json.first_name liason.first_name
		json.last_name liason.last_name
	end
end