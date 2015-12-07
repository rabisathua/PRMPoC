require 'rails_helper'

RSpec.describe "Locations", type: :request do
	it "should give all the locations available" do
		get api_v1_locations_path

		expect(response.content_type).to eq("application/json")
		expect(response.status).to eq 200
	end
end