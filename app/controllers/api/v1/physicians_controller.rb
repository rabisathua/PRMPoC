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
				byebug
				if params[:filters][:by] == 'all'
					render json: Physician.by_location_and_speciality(params[:filters][:location_id], params[:filters][:speciality_id]), content_type: Mime::JSON, status: 200
				elsif params[:filters] == 'involved'
					render json: Physician.by_all(params['location_id'], params['speciality_id']).by_involved, content_type: Mime::JSON, status: 200
				elsif params[:filters] == 'lead'
					render json: Physician.by_all(params['location_id'], params['speciality_id']).by_lead, content_type: Mime::JSON, status: 200
				else
					unprocessble_data
				end
			end

		end
	end
end