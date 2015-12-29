module Api
	module V1
		class LiasonsController < Api::ApiController
			before_action :authenticate_api_user!
			set_pagination_headers :liasons, only: [:index]

			def index
				@liasons = Liason.all.paginate(page: params[:page], per_page: params[:per_page])
				
				respond_with(@liasons)
			end

		end
	end
end
