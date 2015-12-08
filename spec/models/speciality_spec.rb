require 'rails_helper'

RSpec.describe Speciality, type: :model do
  let(:client){ create(:client, name: "Client1")}
  
  it "should be a valid speciality" do
  	speciality = build(:speciality, name: "Physician", client_id: client.id)

  	expect(speciality).to be_valid
  end

  it "should not be valid speciality name is not present"  do
  	speciality = build(:speciality, client_id: client.id)

  	expect(speciality).not_to be_valid
  end

  it "should not be valid speciality if name is duplicated" do
  	existing_speciality = create(:speciality, name: "Physician", client_id: client.id)
  	new_speciality = build(:speciality, name: "Physician", client_id: client.id)

  	expect(new_speciality).not_to be_valid
  end

  it "should not be valid speciality if client id is not present" do
  	speciality = build(:speciality, name: "Physician")

  	expect(speciality).not_to be_valid
  end
end
