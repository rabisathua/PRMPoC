require 'rails_helper'

RSpec.describe Location, type: :model do

	let(:client){ create(:client, name: "Client1")}
  
  it "should be a valid location" do
  	location = build(:location, name: "Georgia", zip: '50021', client_id: client.id)

  	expect(location).to be_valid
  end

  it "should not be a valid location if name is not present" do
  	location = build(:location, zip: "50021", client_id: client.id)

  	expect(location).not_to be_valid
  end

  it "should not be a valid location if zip is not present" do
  	location = build(:location, name: "Georgia", client_id: client.id)

  	expect(location).not_to be_valid
  end

  it "should not be a valid location if zip is more than 5 characters" do
  	location = build(:location, name: "Georgia", zip: "500321", client_id: client.id)

  	expect(location).not_to be_valid
  end

  it "should not be a valid location if zip contains characters other than digits" do
  	location = build(:location, name: "Georgia", zip: "ab123", client_id: client.id)

  	expect(location).not_to be_valid
  end

  it "should not be a valid location if client id is not present" do
  	location = build(:location, name: "Georgia", zip: "50032")

  	expect(location).not_to be_valid
  end

end
