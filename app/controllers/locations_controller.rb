class LocationsController < ApplicationController
	
	def get_locations
		render json: Location.for_select, status: 200
	end

end