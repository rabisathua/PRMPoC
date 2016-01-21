require 'rails_helper'

RSpec.describe "Authentication", type: :routing do
	it "routes to /api/auth/auth_token" do
		expect(post: "/api/auth/auth_token").to route_to(controller: "knock/auth_token", action: "create")
	end
end
