module Api
	module V1
		class SpecialitiesController < Api::ApiController
			before_action :authenticate_api_user!

			def index
				clients = Client.includes(:specialities).where(id: JSON.parse(request.headers["app-id"]))
				@specialities = clients.collect(&:specialities)

				respond_with(@specialities)
			end
		end
	end
end