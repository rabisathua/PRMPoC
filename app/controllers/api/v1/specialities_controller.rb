module Api
	module V1
		class SpecialitiesController < ApplicationController

			def index
				render json: Speciality.for_select, status: 200
			end
		end
	end
end