module Api
	module V1
		class PhysiciansController < Api::ApiController
      before_action :authenticate_api_user!
      after_action(only: [:index]) {|c| c.pagination_headers("physicians")}

      rescue_from NameError do |e|
        render json: ["#{e.message}"], status: 404
      end

			def index
        location_id = params[:filters][:location_id]
        speciality_id = params[:filters][:speciality_id]
        @physicians = klass.physicians(location_id, speciality_id).paginate(page: params[:page], per_page: params[:per_page])
        render json: @physicians, status: 200
			end
      
      private
        def klass
          params[:filters][:by].nil? ? (raise NameError) : ('PhysicianFilter::' + params[:filters][:by].capitalize!).constantize
        end
		end
	end
end