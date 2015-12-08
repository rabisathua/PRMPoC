module Api
  class ApiController < ApplicationController

  protected    
	  def unprocessble_data
	  	render json: { message: "Invalid data"}, status: 422
	  end
	end

end