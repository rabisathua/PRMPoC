module Api
	module V1
		class LocationsController < Api::ApiController
			before_action :authenticate_api_user!
			
			def index
				@locations = Location.all

				respond_with(@locations)
			end

		end
	end
end