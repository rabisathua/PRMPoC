class SpecialitiesController < ApplicationController

	def index
		render json: Speciality.for_select, status: 200
	end
end