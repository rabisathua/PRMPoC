module Api
	module V1
		class SpecialitiesController < Api::ApiController
			before_action :authenticate

			def index
        app_id = JSON.parse(request.headers["app-id"])
        raise "Expecting Array but got #{app_id.class} for app-id " unless app_id.class == Array
        
				@specialities = Speciality.by_clients(app_id)

				respond_with(@specialities)
			end
		end
	end
end