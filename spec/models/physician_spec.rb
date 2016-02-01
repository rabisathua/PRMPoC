require 'rails_helper'

RSpec.describe Physician, type: :model do

	let(:client){ create(:client, name: "client1") }
	let(:location){ create(:location, name: "location1", zip: "50021", client_id: client.id)}
	let(:speciality){ create(:speciality, name: "speciality1")}

	it "should be a valid physician" do
		physician = create(:physician, is_involved: false, is_lead: true, speciality_id: speciality.id, location_id: location.id, client_id: client.id)

		expect(physician).to be_valid
	end

end
