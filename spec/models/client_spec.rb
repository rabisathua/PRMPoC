require 'rails_helper'

RSpec.describe Client, type: :model do
  
  it "should be a valid client" do
  	client = build(:client, name: 'client1')

  	expect(client).to be_valid
  end

  it "should be invalid when name is not given" do
  	client = build(:client)

  	expect(client).not_to be_valid
  end

  it "should not allow duplicate name for clients" do
  	existing_client = create(:client, name: "Joe")
  	new_client = build(:client, name: "Joe")

  	expect(new_client).not_to be_valid
  end

end
