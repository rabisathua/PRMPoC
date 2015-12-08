require 'rails_helper'

RSpec.describe "Physicians", type: :request do
	
	let(:user){ create(:user) }

	let(:auth_response) do
		post api_user_session_path, {
			email: user.email,
			password: user.password
		}

		response
	end

	let(:location){ create(:location)}
	let(:speciality){ create(:speciality)}

	it "should not allow access to physicians without authorization" do 
		get api_v1_physicians_path

		expect(response.status).to eq 401
	end

	it "should give all physicians with authorization" do
		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
				by: "all"
			}
		}, {
			"access-token": auth_response.headers["access-token"],
			"client": auth_response.headers["client"],
			"uid": auth_response.headers["uid"]
		}

		expect(response.status).to eq 200
	end

	it "should give involved physicains only" do

		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
				by: "involved"
			}
		}, {
			"access-token": auth_response.headers["access-token"],
			"client": auth_response.headers["client"],
			"uid": auth_response.headers["uid"]
		}

		expect(response.status).to eq 200
	end

	it "should give lead physicains only" do
		location = create(:location)
		speciality = create(:speciality)

		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
				by: "lead"
			}
		}, {
			"access-token": auth_response.headers["access-token"],
			"client": auth_response.headers["client"],
			"uid": auth_response.headers["uid"]
		}

		expect(response.status).to eq 200
	end

	it "should fail with if by filter is not provided" do
		location = create(:location)
		speciality = create(:speciality)

		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
			}
		}, {
			"access-token": auth_response.headers["access-token"],
			"client": auth_response.headers["client"],
			"uid": auth_response.headers["uid"]
		}

		expect(response.status).to eq 422
	end
end