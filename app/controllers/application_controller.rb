class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  include DeviseTokenAuth::Concerns::SetUserByToken
	# after_action :set_client_to_headers
  

	# protected
 #    def set_client_to_headers
 #    	response.headers["app-key"] = "#{current_user.clients.pluck(:id)}" # TODO
 #    end
end
