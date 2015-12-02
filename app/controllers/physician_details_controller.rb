class PhysicianDetailsController < ApplicationController

	def get_physicians
		byebug
		param_data = ActiveSupport::JSON.decode(request.raw_post)

		render json: PhysicianDetail.find_physicians(param_data['location_id'], param_data['speciality_id']), content_type: Mime::JSON, status: 200
	end

end