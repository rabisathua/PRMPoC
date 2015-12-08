require 'rails_helper'

RSpec.describe "Locations", type: :request do

	let(:user){ create(:user) }

	let(:auth_response) do
		post api_user_session_path, {
			email: user.email,
			password: user.password
		}

		response
	end

	it "should not allow access to locations without authorization" do
		get api_v1_locations_path

		expect(response.status).to eq 401
	end

	it "should allow access to locations with authorization" do

		get api_v1_locations_path, {
			"access-token": auth_response.headers["access-token"],
			"client": auth_response.headers["client"],
			"uid": auth_response.headers["uid"]
		}

		expect(response.status).to eq 200
	end
end