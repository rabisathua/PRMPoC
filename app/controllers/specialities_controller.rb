class SpecialitiesController < ApplicationController

	def get_specialities
		render json: Speciality.for_select, status: 200
	end
end