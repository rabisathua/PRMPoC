require 'rails_helper'

RSpec.describe "Liasons", type: :request do

	before do
		roles = create_list(:role, 1, name: "Admin")
		user = create(:user, email: "xsa@example.com", roles: roles)
		@auth_response = sign_in(user)
	end

	after do
		sign_out(@auth_response)
	end

	it "should deny access without authentication" do
		get api_v1_liasons_path

		expect(response.status).to eq 401
	end

	it "should allow access with authentication" do

		get api_v1_liasons_path, nil, {
			"access-token": @auth_response.headers["access-token"],
			"client": @auth_response.headers["client"],
			"uid": @auth_response.headers["uid"],
			"Accept": "application/json"
		}

		expect(response.content_type).to eq("application/json")
		expect(response.status).to eq 200
	end
end