FactoryGirl.define do
  factory :user do 	
		sequence(:email){|n| "sa#{n}@example.com"}
		password "password"

		first_name "John"
		last_name "Joe"
		active true
	end
end
