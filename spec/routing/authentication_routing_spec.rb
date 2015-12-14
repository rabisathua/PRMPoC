require 'rails_helper'

RSpec.describe "Authentication", type: :routing do
	it "routes to /api/auth/sign_in" do
		expect(get: 'api/auth/sign_in').to be_routable
	end

	it "routes to /api/auth/sign_out" do
		expect(delete: 'api/auth/sign_out').to be_routable
	end
end
