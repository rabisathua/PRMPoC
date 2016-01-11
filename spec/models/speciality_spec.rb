require 'rails_helper'

RSpec.describe Speciality, type: :model do
  
  it "should be a valid speciality" do
  	speciality = build(:speciality, name: "Physician")

  	expect(speciality).to be_valid
  end

  it "should not be valid speciality if name is not present"  do
  	speciality = build(:speciality)

  	expect(speciality).not_to be_valid
  end

  it "should not be valid speciality if name is duplicated" do
  	existing_speciality = create(:speciality, name: "Physician")
  	new_speciality = build(:speciality, name: "Physician")

  	expect(new_speciality).not_to be_valid
  end
  
end
