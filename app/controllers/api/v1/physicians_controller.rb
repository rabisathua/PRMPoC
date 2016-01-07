module Api
	module V1
		class PhysiciansController < Api::ApiController
      before_action :authenticate_api_user!
      set_pagination_headers :physicians, only: [:index]

      rescue_from NameError do |e|
        render json: ["#{e.message}"], status: 404
      end

      # Possible url parameters
      # Case 1: For a list of all Physicians => /physicians
      # Case 2: For a list of Physicians either involved or lead based on location, speciality => /physicians?filters[location_id]=1&filters[speciality_id]
      # Case 3: For a list of Involved Physicians based on location, speciality & involved => /physicians?filters[location_id]=1&filters[speciality_id]&filters[by]=involved
      # Case 4: For a list of Lead Physicians based on location, speciality & involved => /physicians?filters[location_id]=1&filters[speciality_id]&filters[by]=lead
			def index
          location_id = params[:filters][:location_id]
          speciality_id = params[:filters][:speciality_id]
          liason_id = params[:filters][:liason_id]
          filter_by = params[:filters][:by]

          # This is default if not location and speciality is given
          filter_by = "all" unless location_id.present? && speciality_id.present? 
           # If "all" is not set then defaults to location_speciality by implication that location & speciality is present
           # other explicit options that can be set are involved and lead
          filter_by = "location_speciality" unless filter_by.present?

          @physicians = filters[filter_by.to_sym].call(location_id, speciality_id).paginate(page: params[:page], per_page: params[:per_page])

          # Fetch physicians based on filters and who are assigned to Liasons with intersecting the object to obtain
          # relevant result
          @physicians += Liason.assigned_physicians(liason_id) if params[:filters][:liason_id].present?
        end

        respond_with(@physicians)
			end
      
      private
        def filters
          { 
            all: ->{ Physician.all },
            location_speciality: ->(location_id, speciality_id){ Physician.by_location(location_id).by_speciality(speciality_id) }, 
            involved: ->(location_id, speciality_id){ Physician.by_location_and_speciality(location_id, speciality_id).by_involved }, 
            lead: ->(location_id, speciality_id){ Physician.by_location_and_speciality(location_id, speciality_id).by_lead }
          }
        end

		end
	end
end