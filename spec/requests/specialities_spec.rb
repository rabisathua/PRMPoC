require 'rails_helper'

RSpec.describe "Specialities", type: :request do
	let(:user){ create(:user) }

	let(:auth_response) do
		post api_user_session_path, {
			email: user.email,
			password: user.password
		}

		response
	end

	it "should not allow access to specialities without authorization" do
		get api_v1_specialities_path

		expect(response.status).to eq 401
	end

	it "should allow access to specialities with authorization" do

		get api_v1_specialities_path, nil, {
			"access-token": auth_response.headers["access-token"],
			"client": auth_response.headers["client"],
			"uid": auth_response.headers["uid"],
			"Accept": "application/json"
		}

		expect(response.status).to eq 200
		expect(response.content_type).to eq "application/json"
	end
end