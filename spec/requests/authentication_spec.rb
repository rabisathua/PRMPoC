require 'rails_helper'

RSpec.describe "Authentication", type: :request do

	let(:user) { create(:user) }

	it 'should generate token on signin and deletes token on signout' do

		post "/api/auth/auth_token", {
			auth: {email: user.email, password: user.password}
		}

		expect(response.status).to eq 201
		expect(response.body).to include("jwt")
	end

end