module AuthenticationHelper
	def sign_in(user)
		post api_user_session_path, {
			email: user.email,
			password: user.password
		}

		response
	end

	# Needs response from sign_in
	def sign_out(response)
		delete destroy_api_user_session_path, {
			"access-token": response.headers["access-token"],
			"client": response.header["client"],
			"uid": response.header["uid"]
		}

		response
	end

end