require 'rails_helper'

RSpec.describe "Specialities", type: :routing do
	it "routes to index" do
		expect(get: "api/v1/specialities").to be_routable
		expect(get: "api/v1/specialities").to route_to(controller: "api/v1/specialities", action: "index")
	end
end