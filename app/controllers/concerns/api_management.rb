module ApiManagement
	extend ActiveSupport::Concern

	class_methods do
		# Sets the pagination headers for a response which is serving a list of objects
		def set_pagination_headers(name, options={})
			after_action(options) do 
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

	  # To send client details for the current_user via response headers
	  def set_client_headers(options={})
    	after_action(options) do
	    	response.headers["X-clients"] = current_user.clients.collect{|e| [e.id, e.name]}.to_json
	    end
	  end
	end
end