module Api
  class ApiController < ApplicationController
  	include ApiManagement
  	skip_before_action :verify_authenticity_token, if: Proc.new{|c| c.request.format == "application/json"}
  	respond_to :json
  	set_client_headers
			
  end
end	