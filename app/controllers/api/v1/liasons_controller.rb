module Api
	module V1
		class LiasonsController < Api::ApiController
			before_action :authenticate_api_user!
      after_action(only: [:index]) {|c| c.pagination_headers("liasons")}

			def index
				@liasons = Liason.all.(page: params[:page], per_page: params[:per_page])
				
				respond_with(@liasons)
			end

		end
	end
end
