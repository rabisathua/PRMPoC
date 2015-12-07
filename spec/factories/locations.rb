FactoryGirl.define do
  factory :location do
    name "Someplace"
		zip "50021"

		created_by 1
		updated_by 1
		association :client, factory: :client
  end

end
