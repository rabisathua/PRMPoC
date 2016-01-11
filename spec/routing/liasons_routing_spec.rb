require 'rails_helper'

RSpec.describe "Liason", type: :routing do
	it "routes to index" do
		expect(get: "api/v1/liasons").to be_routable
		expect(get: "api/v1/liasons").to route_to(controller: "api/v1/liasons", action: "index")
	end
end