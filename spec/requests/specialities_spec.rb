require 'rails_helper'

RSpec.describe "Specialities", type: :request do
	it "should give all the specialities available" do
		get api_v1_specialities_path

		expect(response.content_type).to eq("application/json")
		expect(response.status).to eq 200
	end
end