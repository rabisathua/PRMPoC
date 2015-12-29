json.array! @liasons do |liason|
	
	json.partial! liason

	json.name do
		json.first_name liason.user.first_name
		json.last_name liason.user.last_name
	end
end