require 'rails_helper'

RSpec.describe "Locations", type: :request do

	let(:user){ create(:user) }

	let(:auth_response) do
		post "/api/auth/auth_token", {
			auth:{email: user.email,password: user.password}
		}

		response
	end

	it "should not allow access to locations without authorization" do
		get api_v1_locations_path

		expect(response.status).to eq 401
	end

	it "should allow access to locations with authorization" do

		get api_v1_locations_path, nil, {
			"access-token": auth_response.headers["access-token"],
			"client": auth_response.headers["client"],
			"uid": auth_response.headers["uid"],
			"Accept": "application/json"
		}

		expect(auth_response.status).to eq 200
		expect(auth_response.content_type).to eq("application/json")
	end
end