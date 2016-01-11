require 'rails_helper'

RSpec.describe "Authentication", type: :request do

	let(:roles){ create_list(:role, 1, name: "Admin") }
	let(:user) { create(:user, email: 'xyz@example.com', roles: roles ) }

	it 'should generate token on signin and deletes token on signout' do

		# POST auth/sign_in
		sign_in(user)

		expect(user.reload.tokens.count).to eq 1

		expect(response.status).to eq 200

		expect(response.headers["access-token"]).not_to be_nil
		expect(response.headers["client"]).not_to be_nil
		expect(response.headers["uid"]).not_to be_nil

		# DELETE auth/sign_out
		out_response = sign_out(response)

		expect(user.reload.tokens.count).to eq 0

		expect(out_response.status).to eq 200
	end

end