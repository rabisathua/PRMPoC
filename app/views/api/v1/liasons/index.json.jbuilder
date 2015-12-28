json.array! @liasons do |liason|
	json.id liason.id
	json.name liason.is_active?

	json.user do
		json.first_name liason.user.first_name
		json.last_name liason.user.last_name
	end
end