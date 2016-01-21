module Api
	module V1
		class ClientsController < Api::ApiController
			before_action :authenticate
			set_pagination_headers :clients, only: [:index]
			# rescue_from NameError do |e|
   		# 	render json: ["#{e.message}"], status: 404
   		# end

   		# Possible urls
   		# http://localhost:3000/api/v1/clients
   		# http://localhost:3000/api/v1/clients?filters[by]=user
			def index
				by = params[:filters].try(:[], :by)
				by ||= "all"

				@clients = filters[by.to_sym].call(current_user).paginate(page: params[:page], per_page: params[:per_page])
				
				respond_with(@clients)
			end

			protected
				def filters
					{ 
						all: proc{ User.all },
						user: ->(user){ user.clients } 																									
					}
				end

		end
	end
end
