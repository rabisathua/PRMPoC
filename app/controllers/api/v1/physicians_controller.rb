module Api
	module V1
		class PhysiciansController < Api::ApiController

			def index
				# begin
				# 	param_data = ActiveSupport::JSON.decode(request.raw_post)
				# rescue StandardError => se
				# 	unprocessble_data
				# 	return
				# end

				if params[:filters][:by] == 'all'
					render json: PhysicianDetail.by_location_and_speciality(param_data[:filters][:location_id], param_data[:filters][:speciality_id]), content_type: Mime::JSON, status: 200
				elsif params[:filters] == 'involved'
					render json: PhysicianDetail.by_all(param_data['location_id'], param_data['speciality_id']).by_involved, content_type: Mime::JSON, status: 200
				elsif params[:filters] == 'lead'
					render json: PhysicianDetail.by_all(param_data['location_id'], param_data['speciality_id']).by_lead, content_type: Mime::JSON, status: 200
				end
			end

		end
	end
end