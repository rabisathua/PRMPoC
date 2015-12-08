module Api
	module V1
		class SpecialitiesController < ApplicationController
			before_action :authenticate_api_user!

			def index
				render json: Speciality.for_select, status: 200
			end
		end
	end
end