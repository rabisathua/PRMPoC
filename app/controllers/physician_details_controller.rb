class PhysicianDetailsController < ApplicationController

	def get_physicians
		begin
			param_data = ActiveSupport::JSON.decode(request.raw_post)
		rescue StandardError => se
			unprocessble_data
			return
		end

		if params[:by] == 'all'
			render json: PhysicianDetail.find_physicians(param_data['location_id'], param_data['speciality_id']), content_type: Mime::JSON, status: 200
		elsif params[:by] == 'involved'
			render json: PhysicianDetail.find_physicians(param_data['location_id'], param_data['speciality_id']).by_involved, content_type: Mime::JSON, status: 200
		elsif params[:by] == 'lead'
			render json: PhysicianDetail.find_physicians(param_data['location_id'], param_data['speciality_id']).by_lead, content_type: Mime::JSON, status: 200
		end
	end

end