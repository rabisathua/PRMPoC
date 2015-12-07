FactoryGirl.define do
  factory :speciality do
    name "Some Speciality"

		created_by 1
		updated_by 1
		association :client, factory: :client
  end

end
