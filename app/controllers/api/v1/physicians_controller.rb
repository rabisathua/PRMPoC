module Api
	module V1
		class PhysiciansController < Api::ApiController
      before_action :authenticate_api_user!

			def index
        location_id = params[:filters][:location_id]
        speciality_id = params[:filters][:speciality_id]
        @physicians = klass.physicians(location_id, speciality_id)
        render json: @physicians, status: 200
			end
      
      private
        def klass
          ('PhysicianFilter::' + params[:filters][:by].capitalize!).constantize
        end
      
		end
	end
end