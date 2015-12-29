module Api
	module V1
		class PhysiciansController < Api::ApiController
      before_action :authenticate_api_user!
      set_pagination_headers :physicians, only: [:index]

      rescue_from NameError do |e|
        render json: ["#{e.message}"], status: 404
      end

			def index
        unless params[:filters][:by] == "liason"
          location_id = params[:filters][:location_id]
          speciality_id = params[:filters][:speciality_id]          

          @physicians = filters[params[:filters][:by].to_sym].call(location_id, speciality_id).paginate(page: params[:page], per_page: params[:per_page])
        else
          @physicians = filters[params[:filters][:by].to_sym].call(params[:filters][:liason_id]).paginate(page: params[:page], per_page: params[:per_page])
        end
        respond_with(@physicians)
			end
      
      private
        def filters
         { 
           all: ->(location_id, speciality_id){ Physician.by_location_and_speciality(location_id, speciality_id) }, 
           involved: ->(location_id, speciality_id){ Physician.by_location_and_speciality(location_id, speciality_id).by_involved }, 
           lead: ->(location_id, speciality_id){ Physician.by_location_and_speciality(location_id, speciality_id).by_lead },
           liason: ->(liason_id){ Physician.by_liason(liason_id) }
         }
        end

		end
	end
end