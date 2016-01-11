module Api
  class ApiController < ApplicationController
  	respond_to :json
  	rescue_from CanCan::AccessDenied, with: :authorization_message
  	skip_before_action :verify_authenticity_token, if: Proc.new{|c| c.request.format == "application/json" || c.request.format == "application/xml"}
	
		protected
			def self.set_pagination_headers(name, options)
				after_action(options) do |controller|
		      results = instance_variable_get("@#{name}")
		      response.headers["X-pagination"] = {
		        total: results.total_entries,
		        total_pages: results.total_pages,
		        previous_page: results.previous_page,
		        next_page: results.next_page,
		        out_of_bounds: results.out_of_bounds?,
		        offset: results.offset
		      }.to_json
		    end
	    end

	    def authorization_message
	    	respond_to do |format|
		    	if current_user
		    		format.json{ forbidden_message }
		    		format.json{ forbidden_message }
		    	else
		    		format.json { unauthorized_message }
		    		format.xml { unauthorized_message }
		    	end
		    end
	    end

	    def unauthorized_message
	    	render json: {message: "Unauthorized"}, status: 401
	    end

	    def forbidden_message
	    	render json: { message: "Forbidden", status: 403 }
	    end
  end
end	