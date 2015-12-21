module Api
	module V1
		class SpecialitiesController < Api::ApiController
			before_action :authenticate_api_user!

			def index
        begin
          app_id = JSON.parse(request.headers["app-id"])
          raise unless app_id.class == Array
        rescue StandardError => e
          raise StandardError, "app-id is not in proper format."
        end
        
				@specialities = Speciality.by_clients(app_id)

				respond_with(@specialities)
			end
		end
	end
end