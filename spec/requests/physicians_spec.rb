require 'rails_helper'

RSpec.describe "Physicians", type: :request do
	
  let(:client){ create(:client, name: 'client1')}
	let(:location){ create(:location, name: 'location1', zip: '40012', client_id: client.id)}
	let(:speciality){ create(:speciality, name: 'speciality1')}

	before do
		roles = create_list(:role, 1, name: "Admin")
		user = create(:user, email: "xsa@example.com", roles: roles)
		@auth_response = sign_in(user)
	end

	after do
		sign_out(@auth_response)
	end

	it "should deny access without authentication" do 
		get api_v1_physicians_path

		expect(response.status).to eq 401
	end

	it "should give all physicians with location and speciality" do

		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id
			}
		}, {
			"access-token": @auth_response.headers["access-token"],
			"client": @auth_response.headers["client"],
			"uid": @auth_response.headers["uid"],
			"Accept": "application/json"
		}

		expect(response.status).to eq 200
		expect(response.content_type).to eq "application/json"
	end

	it "should give involved physicains only" do

		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
				by: "involved"
			}
		}, {
			"access-token": @auth_response.headers["access-token"],
			"client": @auth_response.headers["client"],
			"uid": @auth_response.headers["uid"],
			"Accept": "application/json"
		}

		expect(response.status).to eq 200
		expect(response.content_type).to eq "application/json"
	end

	it "should give lead physicains only" do
		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
				by: "lead"
			}
		}, {
			"access-token": @auth_response.headers["access-token"],
			"client": @auth_response.headers["client"],
			"uid": @auth_response.headers["uid"],
			"Accept": "application/json"
		}

		expect(response.status).to eq 200
		expect(response.content_type).to eq "application/json"
	end

end