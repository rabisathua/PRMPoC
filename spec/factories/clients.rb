FactoryGirl.define do
  factory :client do
    # name "MyString"
        logo_path ""
        description ""
        init_path ""
        is_enabled 0
		created_by 1
		updated_by 1
  end

end
