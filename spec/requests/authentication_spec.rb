require 'rails_helper'

RSpec.describe "Authentication", type: :request do

	it 'should generate token on signin and deletes token on signout' do
		user = create(:user)
		post api_user_session_path, {
			email: user.email,
			password: user.password
		}

		expect(user.reload.tokens.count).to eq(1)
		expect(response.headers["access-token"]).not_to be_nil
		expect(response.headers["client"]).not_to be_nil
		expect(response.headers["uid"]).not_to be_nil

		delete destroy_api_user_session_path, {
			"access-token": response.headers["access-token"],
			"client": response.header["client"],
			"uid": response.header["uid"]
		}

		expect(response.content_type).to eq("application/json")
		expect(response.status).to eq 200
		expect(user.reload.tokens.count).to eq 0
	end

end