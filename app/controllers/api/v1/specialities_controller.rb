module Api
	module V1
		class SpecialitiesController < Api::ApiController
			before_action :authenticate

			# Will need clients header key with the request and value should be an array of client_ids
			def index
        clients = JSON.parse(request.headers["clients"])
        raise "Expecting Array but got #{app_id.class} for clients " unless clients.class == Array
        
				@specialities = Speciality.by_clients(clients)

				respond_with(@specialities)
			end
		end
	end
end