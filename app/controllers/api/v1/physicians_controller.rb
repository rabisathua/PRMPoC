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

        @physicians = filters[params[:filters][:by].to_sym].call(location_id, speciality_id).paginate(page: params[:page], per_page: params[:per_page])

        respond_with(@physicians)
			end
      
      private
        def filters
         { 
           all: ->(location_id, speciality_id){ Physician.by_location_and_speciality(location_id, speciality_id) }, 
           involved: ->(location_id, speciality_id){ Physician.by_location_and_speciality(location_id, speciality_id).by_involved }, 
           lead: ->(location_id, speciality_id){ Physician.by_location_and_speciality(location_id, speciality_id).by_lead }
         }
        end

		end
	end
end