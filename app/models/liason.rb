class Liason < ActiveRecord::Base
	belongs_to :user
	has_many :liason_physicians
	has_many :physicians, through: :liason_physicians
	
	default_scope ->{ includes(:user, :physicians) }	

	def is_active?
		self.is_active
	end

end
