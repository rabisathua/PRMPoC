FactoryGirl.define do
  factory :role do
  	trait :admin do
  		name do 
		    "Admin"
		  end
	  end

	  trait :client_admin do
	  	name do
	  		"ClientAdmin"
	  	end
	  end

	  trait :liason do
	  	name do
	  		"Liason"
	  	end
	  end
  end

end
