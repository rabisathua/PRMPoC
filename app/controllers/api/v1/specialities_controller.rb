module Api
	module V1
		class SpecialitiesController < Api::ApiController
			before_action :authenticate_api_user!

			def index
				@specialities = Speciality.all

				respond_with(@specialities)
			end
		end
	end
end