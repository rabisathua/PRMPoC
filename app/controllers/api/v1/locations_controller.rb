module Api
	module V1
		class LocationsController < Api::ApiController
			before_action :authenticate_api_user!
			
			def index
				render json: Location.for_select, status: 200
			end

		end
	end
end