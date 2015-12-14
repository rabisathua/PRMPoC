require 'rails_helper'

RSpec.describe "Location", type: :routing do
	it "routes to index" do
		expect(get: 'api/v1/locations').to be_routable
		expect(get: 'api/v1/locations').to route_to(controller: "api/v1/locations", action: "index")
	end
end