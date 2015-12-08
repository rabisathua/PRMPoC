require 'rails_helper'

RSpec.describe "Authentication", type: :request do

	let(:user) { create(:user) }

	it 'should generate token on signin and deletes token on signout' do

		# POST auth/sign_in
		post api_user_session_path, {
			email: user.email,
			password: user.password
		}

		expect(user.reload.tokens.count).to eq 1

		expect(response.status).to eq 200

		expect(response.headers["access-token"]).not_to be_nil
		expect(response.headers["client"]).not_to be_nil
		expect(response.headers["uid"]).not_to be_nil

		# DELETE auth/sign_out
		delete destroy_api_user_session_path, {
			"access-token": response.headers["access-token"],
			"client": response.header["client"],
			"uid": response.header["uid"]
		}

		expect(user.reload.tokens.count).to eq 0

		expect(response.status).to eq 200
	end

end