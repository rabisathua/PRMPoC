require 'rails_helper'

RSpec.describe "Physician", type: :routing do
	it "routes to index" do
		expect(get: "api/v1/physicians").to be_routable
		expect(get: "api/v1/physicians").to route_to(controller: "api/v1/physicians", action: "index")
	end
end