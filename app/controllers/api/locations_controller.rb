module Api
	module V1
		class LocationsController < ApiController
			
			def index
				render json: Location.for_select, status: 200
			end

		end
	end
end