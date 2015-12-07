require 'rails_helper'

RSpec.describe "Physicians", type: :request do
	
	it "should give all physicians" do
		location = create(:location)
		speciality = create(:speciality)

		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
				by: "all"
			}
		}

		expect(response.content_type).to eq("application/json")
		expect(response.status).to eq 200
	end

	it "should give involved physicains only" do
		location = create(:location)
		speciality = create(:speciality)

		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
				by: "involved"
			}
		}

		expect(response.content_type).to eq("application/json")
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
		}

		expect(response.content_type).to eq("application/json")
		expect(response.status).to eq 200
	end

	it "should fail with if by filter is not provided" do
		location = create(:location)
		speciality = create(:speciality)

		get api_v1_physicians_path, { filters: {
				location_id: location.id,
				speciality_id: speciality.id,
			}
		}

		expect(response.content_type).to eq("application/json")
		expect(response.status).to eq 422
	end
end