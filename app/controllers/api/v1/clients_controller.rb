module Api
	module V1
		class ClientsController < Api::ApiController
			before_action :authenticate_api_user!
			set_pagination_headers :clients, only: [:index]
			rescue_from NameError do |e|
        render json: ["#{e.message}"], status: 404
      end

			def index
				by = params[:filters][:by]
				@clients = filters[by.to_sym].call(current_user).paginate(page: params[:page], per_page: params[:per_page])
				
				respond_with(@clients)
			end

			protected
				def filters
					{ 
						all: -> { User.all },
						user: ->(user){ user.clients } 																									
					}
				end

		end
	end
end
